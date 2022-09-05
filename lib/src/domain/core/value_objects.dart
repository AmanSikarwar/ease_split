import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/core/errors.dart';
import 'package:ease_split/src/domain/core/failure.dart';
import 'package:ease_split/src/domain/core/value_validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() => value.fold(
        (l) => throw UnexpectedValueError(l),
        (r) => r,
      );

  T getOrElse(T dflt) => value.getOrElse(() => dflt);

  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      other is ValueObject<T> && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() => UniqueId._(right(const Uuid().v1()));

  factory UniqueId.fromUniqueString(String uniqueId) =>
      UniqueId._(right(uniqueId));

  const UniqueId._(this.value);
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) => StringSingleLine._(
      validateStringNotEmpty(input).flatMap(validateSingleLine));

  const StringSingleLine._(this.value);
}

class MaxLengthString extends ValueObject<String> {
  const MaxLengthString._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  factory MaxLengthString(String input) => MaxLengthString._(
      validateStringNotEmpty(input).flatMap(validateStringMaxLength));
}

class PositiveNumber extends ValueObject<num> {
  const PositiveNumber._(this.value);

  @override
  final Either<ValueFailure<num>, num> value;

  factory PositiveNumber(num input) =>
      PositiveNumber._(validatePositiveNumber(input));
}
