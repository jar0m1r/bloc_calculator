import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_calculator/app/locator.dart';
import 'package:bloc_calculator/services/vector_manager.dart';
import 'package:bloc_calculator/utils/vector_group.dart';
import 'package:meta/meta.dart';

part 'vector_sheet_event.dart';
part 'vector_sheet_state.dart';

class VectorSheetBloc extends Bloc<VectorSheetEvent, VectorSheetState> {
  VectorSheetBloc() : super(const SheetLoading());

  final _vectorManager = locator.get<VectorManager>();

  @override
  Stream<VectorSheetState> mapEventToState(
    VectorSheetEvent event,
  ) async* {
    if (event is InitializeSheet) {
      yield const SheetLoading();
      final vectorSheet = await _vectorManager.loadVectorSheet(event.name);
      yield SheetReady(vectorSheet);
    }
  }
}
