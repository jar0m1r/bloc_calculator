import 'package:flutter/material.dart';
import 'package:bloc_calculator/utils/path_extensions.dart';
import 'package:svg_path_parser/svg_path_parser.dart';

abstract class Drawable {
  void draw(Canvas canvas, Rect viewport);
}

class VectorGroup {
  String id;
  Map<String, VectorElement> elementMap;
  Size size;

  VectorGroup({this.id, this.elementMap, this.size});

  factory VectorGroup.fromSVG(
      String id, Size size, Map<String, List<String>> svgPaths) {
    final Map<String, VectorElement> elementMap = svgPaths.map((key, value) {
      return MapEntry(
        key,
        VectorElement.fromSVG(
            name: key, svgPaths: svgPaths[key], color: Colors.red),
      );
    });
    return VectorGroup(id: id, size: size, elementMap: elementMap);
  }

  void scale(double scaleFactor) {
    for (final VectorElement element in elementMap.values.toList()) {
      element.scale(scaleFactor);
    }
    size = size * scaleFactor;
  }
}

class VectorElement implements Drawable {
  String name;
  List<VectorElementLayer> layers;
  Size size;
  Offset position;
  Color color;

  VectorElement._({
    this.name,
    this.layers,
    this.size,
    this.position,
    this.color,
  });

  factory VectorElement.fromSVG(
      {String name, List<String> svgPaths, Color color}) {
    final paths = svgPaths.map((d) => parseSvgPath(d)).toList();
    final bounds = paths.getBounds();
    final position = Offset(bounds.left, bounds.top);
    final normalizedPaths = paths.map((path) => path.shift(-position)).toList();
    final vectorElementLayers = normalizedPaths
        .map((path) => VectorElementLayer(
              path: path,
            ))
        .toList();

    return VectorElement._(
      name: name,
      layers: vectorElementLayers,
      size: Size(bounds.width, bounds.height),
      position: position,
      color: color,
    );
  }

  void scale(double scaleFactor) {
    layers = layers
        .map((layer) => VectorElementLayer(path: layer.path.scale(scaleFactor)))
        .toList();
    size = layers.map((layer) => layer.path).toList().getBounds().size;
    position *= scaleFactor;
  }

  @override
  void draw(Canvas canvas, Rect viewport) {
    for (final layer in layers) {
      layer.draw(canvas, viewport);
    }
  }
}

class VectorElementLayer implements Drawable {
  final Path path;

  VectorElementLayer({
    this.path,
  });

  @override
  void draw(Canvas canvas, Rect viewport) {
    canvas.drawPath(path, Paint());
  }
}
