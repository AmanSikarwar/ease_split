import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/core/failure.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:ease_split/src/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) =>
      EmailAddress._(validateEmailAddress(input));
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) => Password._(validatePassword(input));
}
