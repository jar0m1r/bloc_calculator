part of 'vector_sheet_bloc.dart';

@immutable
abstract class VectorSheetEvent {}

class InitializeSheet extends VectorSheetEvent {
  final String name;

  InitializeSheet(this.name);
}
