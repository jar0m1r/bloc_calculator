abstract class CalculationFailure {
  const CalculationFailure(this.message);
  final String message;
}

class InputFailure extends CalculationFailure {
  const InputFailure(String message) : super(message);
}

class OutputFailure extends CalculationFailure {
  const OutputFailure(String message) : super(message);
}
