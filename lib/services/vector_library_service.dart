import 'dart:convert';
import 'package:bloc_calculator/app/locator.dart';
import 'package:bloc_calculator/repository/vector_repository.dart';
import 'package:bloc_calculator/utils/vector_group.dart';
import 'package:flutter/rendering.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class VectorLibraryService {
  final _vectorRepositoryService = locator<VectorRepository>();

  final Map<String, VectorGroup> groupMap = {};

  Future<VectorGroup> fetchVectorGroup(String name) async {
    if (groupMap.containsKey(name)) {
      return groupMap[name];
    }

    final jsonVectorGroup =
        await _vectorRepositoryService.getVectorGroup('splash');

    //TODO make model and serializer when datamodel is clear
    final data = jsonDecode(jsonVectorGroup) as Map<String, dynamic>;

    final size = Size(
      data['size']['width'] as double,
      data['size']['height'] as double,
    );

    final elements = data['elements'] as Map<String, dynamic>;

    final Map<String, List<String>> vectorElements = elements.map((key, value) {
      return MapEntry(key, value as List<String>);
    });

    final group = VectorGroup.fromSVG('graphics', size, vectorElements);
    groupMap[name] = group;
    return VectorGroup();
  }
}
