// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calculation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalculationTearOff {
  const _$CalculationTearOff();

// ignore: unused_element
  _Calculation call(
      {OperatorType operatorType,
      double value1,
      double value2,
      double result}) {
    return _Calculation(
      operatorType: operatorType,
      value1: value1,
      value2: value2,
      result: result,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Calculation = _$CalculationTearOff();

/// @nodoc
mixin _$Calculation {
  OperatorType get operatorType;
  double get value1;
  double get value2;
  double get result;

  $CalculationCopyWith<Calculation> get copyWith;
}

/// @nodoc
abstract class $CalculationCopyWith<$Res> {
  factory $CalculationCopyWith(
          Calculation value, $Res Function(Calculation) then) =
      _$CalculationCopyWithImpl<$Res>;
  $Res call(
      {OperatorType operatorType, double value1, double value2, double result});
}

/// @nodoc
class _$CalculationCopyWithImpl<$Res> implements $CalculationCopyWith<$Res> {
  _$CalculationCopyWithImpl(this._value, this._then);

  final Calculation _value;
  // ignore: unused_field
  final $Res Function(Calculation) _then;

  @override
  $Res call({
    Object operatorType = freezed,
    Object value1 = freezed,
    Object value2 = freezed,
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      operatorType: operatorType == freezed
          ? _value.operatorType
          : operatorType as OperatorType,
      value1: value1 == freezed ? _value.value1 : value1 as double,
      value2: value2 == freezed ? _value.value2 : value2 as double,
      result: result == freezed ? _value.result : result as double,
    ));
  }
}

/// @nodoc
abstract class _$CalculationCopyWith<$Res>
    implements $CalculationCopyWith<$Res> {
  factory _$CalculationCopyWith(
          _Calculation value, $Res Function(_Calculation) then) =
      __$CalculationCopyWithImpl<$Res>;
  @override
  $Res call(
      {OperatorType operatorType, double value1, double value2, double result});
}

/// @nodoc
class __$CalculationCopyWithImpl<$Res> extends _$CalculationCopyWithImpl<$Res>
    implements _$CalculationCopyWith<$Res> {
  __$CalculationCopyWithImpl(
      _Calculation _value, $Res Function(_Calculation) _then)
      : super(_value, (v) => _then(v as _Calculation));

  @override
  _Calculation get _value => super._value as _Calculation;

  @override
  $Res call({
    Object operatorType = freezed,
    Object value1 = freezed,
    Object value2 = freezed,
    Object result = freezed,
  }) {
    return _then(_Calculation(
      operatorType: operatorType == freezed
          ? _value.operatorType
          : operatorType as OperatorType,
      value1: value1 == freezed ? _value.value1 : value1 as double,
      value2: value2 == freezed ? _value.value2 : value2 as double,
      result: result == freezed ? _value.result : result as double,
    ));
  }
}

/// @nodoc
class _$_Calculation with DiagnosticableTreeMixin implements _Calculation {
  const _$_Calculation(
      {this.operatorType, this.value1, this.value2, this.result});

  @override
  final OperatorType operatorType;
  @override
  final double value1;
  @override
  final double value2;
  @override
  final double result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Calculation(operatorType: $operatorType, value1: $value1, value2: $value2, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Calculation'))
      ..add(DiagnosticsProperty('operatorType', operatorType))
      ..add(DiagnosticsProperty('value1', value1))
      ..add(DiagnosticsProperty('value2', value2))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Calculation &&
            (identical(other.operatorType, operatorType) ||
                const DeepCollectionEquality()
                    .equals(other.operatorType, operatorType)) &&
            (identical(other.value1, value1) ||
                const DeepCollectionEquality().equals(other.value1, value1)) &&
            (identical(other.value2, value2) ||
                const DeepCollectionEquality().equals(other.value2, value2)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(operatorType) ^
      const DeepCollectionEquality().hash(value1) ^
      const DeepCollectionEquality().hash(value2) ^
      const DeepCollectionEquality().hash(result);

  @override
  _$CalculationCopyWith<_Calculation> get copyWith =>
      __$CalculationCopyWithImpl<_Calculation>(this, _$identity);
}

abstract class _Calculation implements Calculation {
  const factory _Calculation(
      {OperatorType operatorType,
      double value1,
      double value2,
      double result}) = _$_Calculation;

  @override
  OperatorType get operatorType;
  @override
  double get value1;
  @override
  double get value2;
  @override
  double get result;
  @override
  _$CalculationCopyWith<_Calculation> get copyWith;
}
