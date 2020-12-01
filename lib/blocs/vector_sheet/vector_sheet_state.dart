part of 'vector_sheet_bloc.dart';

@immutable
abstract class VectorSheetState {
  const VectorSheetState();
}

class SheetLoading extends VectorSheetState {
  const SheetLoading();
}

class SheetReady extends VectorSheetState {
  final VectorGroup vectorSheet;

  const SheetReady(this.vectorSheet);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SheetReady && o.vectorSheet == vectorSheet;
  }

  @override
  int get hashCode => vectorSheet.hashCode;
}

class SheetError extends VectorSheetState {
  final String message;

  const SheetError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SheetError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
