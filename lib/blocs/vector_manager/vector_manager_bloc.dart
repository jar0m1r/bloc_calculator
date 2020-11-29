import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'vector_manager_event.dart';
part 'vector_manager_state.dart';

class VectorManagerBloc extends Bloc<VectorManagerEvent, VectorManagerState> {
  VectorManagerBloc() : super(VectorManagerInitial());

  @override
  Stream<VectorManagerState> mapEventToState(
    VectorManagerEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
