import 'package:flutter/material.dart';
import 'package:bloc_calculator/utils/path_extensions.dart';
import 'package:svg_path_parser/svg_path_parser.dart';

@immutable
class VectorElement {
  final String name;
  final List<Path> paths;
  final Size size;
  final Offset position;
  final Color color;

  const VectorElement._({
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
  //TODO factory here not best way, revisit
  factory VectorElement.scaled(VectorElement element, double scaleFactor) {
    final paths = element.paths.map((path) => path.scale(scaleFactor)).toList();
    final size = paths.getBounds().size;
    final position = element.position * scaleFactor;

    return VectorElement._(
      name: element.name,
      paths: paths,
      size: size,
      position: position,
      color: element.color,
    );
  }
}

//TODO not immutable for now, think about design
//TODO Bad naming, should be abstract ot concrete?
class VectorElements {
  Map<String, VectorElement> elementMap;
  Size size;

  VectorElements({this.elementMap, this.size});

  //TODO instance method not best way, revisit
  void scale(double scaleFactor) {
    elementMap = elementMap.map((key, element) =>
        MapEntry(key, VectorElement.scaled(element, scaleFactor)));
    size = size * scaleFactor;
    return;
  }
}
