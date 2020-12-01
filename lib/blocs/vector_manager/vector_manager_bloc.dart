import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_calculator/app/locator.dart';
import 'package:bloc_calculator/services/vector_manager.dart';
import 'package:meta/meta.dart';

part 'vector_manager_event.dart';
part 'vector_manager_state.dart';

class VectorManagerBloc extends Bloc<VectorManagerEvent, VectorManagerState> {
  VectorManagerBloc() : super(const ManagerLoading(0, 0));

  final _vectorManager = locator.get<VectorManager>();

  @override
  Stream<VectorManagerState> mapEventToState(
    VectorManagerEvent event,
  ) async* {
    if (event is InitializeManager) {
      int i = 0;
      for (final name in event.names) {
        yield ManagerLoading(++i, event.names.length);
        await _vectorManager.loadVectorSheet(name);
      }
      yield ManagerReady(_vectorManager);
    }
  }
}
