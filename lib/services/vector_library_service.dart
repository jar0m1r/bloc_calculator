import 'package:bloc_calculator/repository/vector_repository.dart';
import 'package:bloc_calculator/utils/vector_group.dart';

class VectorLibraryService {
  final Map<String, VectorGroup> groupMap = {};

  VectorGroup fetchElements(String name) {
    if (groupMap.containsKey(name)) {
      return groupMap[name];
    }
    final group = VectorGroup.fromSVG(
        'graphics', VectorRepository.size, VectorRepository.elements);
    groupMap[name] = group;
    return VectorGroup();
  }
}
