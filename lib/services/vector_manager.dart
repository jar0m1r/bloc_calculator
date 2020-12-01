import 'dart:convert';
import 'package:bloc_calculator/app/locator.dart';
import 'package:bloc_calculator/repository/vector_repository.dart';
import 'package:bloc_calculator/utils/vector_group.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class VectorManager {
  final _vectorRepository = locator<MockVectorRepository>();

  final Map<String, VectorGroup> sheetMap = {};
  final Map<String, VectorGroup> imageMap = {};

  Future<VectorGroup> loadVectorSheet(String name) async {
    if (sheetMap.containsKey(name)) {
      return sheetMap[name];
    }

    final jsonVectorGroup = await _vectorRepository.fetchVectorSheet(name);

    //TODO make model and serializer when datamodel is clear
    final data = jsonDecode(jsonVectorGroup) as Map<String, dynamic>;

    final size = Size(
      data['size']['width'] as double,
      data['size']['height'] as double,
    );

    final elements = data['elements'] as Map<String, dynamic>;

    final Map<String, List<String>> vectorElements = elements.map((key, value) {
      return MapEntry(
          key, (value as List<dynamic>).map((str) => str as String).toList());
    });

    return sheetMap[name] = VectorGroup.fromSVG(name, size, vectorElements);
  }
}

// Vector Sheet VectorElements
// vector Image PositionedVectorElements

// Stylable
// Drawable

// Sheet = reference to Unique Vector elements (fixed at size when loaded)
// Image = Positioned Elements referencing unique vectorElements proxying through delegated sizer/positioner of Image Instance.

// usage
// vectorManager.sheet('alphabet')['capital_t'];
