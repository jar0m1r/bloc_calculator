import 'package:flutter/material.dart';
import 'package:bloc_calculator/utils/path_extensions.dart';
import 'package:svg_path_parser/svg_path_parser.dart';

//? should I or should I not make this immutable?
class VectorElement {
  String name;
  List<Path> paths;
  Size size;
  Offset position;
  Color color;

  VectorElement._({
    this.name,
    this.paths,
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

    return VectorElement._(
      name: name,
      paths: normalizedPaths,
      size: Size(bounds.width, bounds.height),
      position: position,
      color: color,
    );
  }

  void scale(double scaleFactor) {
    paths = paths.map((path) => path.scale(scaleFactor)).toList();
    size = paths.getBounds().size;
    position *= scaleFactor;
  }
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
              name: key, svgPaths: svgPaths[key], color: Colors.red));
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
