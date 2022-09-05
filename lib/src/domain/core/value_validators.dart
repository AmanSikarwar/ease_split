import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/core/failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(
        String input) =>
    input.isNotEmpty
        ? right(input)
        : left(ValueFailure.empty(failedValue: input));

Either<ValueFailure<String>, String> validateSingleLine(String input) =>
    input.isNotEmpty && input.contains('\n') == false
        ? right(input)
        : left(ValueFailure.multiline(failedValue: input));

Either<ValueFailure<String>, String> validateEmailAddress(
    String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}""";
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringMaxLength(
        String input,
        {int maxLength = 100}) =>
    input.length <= maxLength
        ? right(input)
        : left(ValueFailure.exceedingLength(
            failedValue: input,
            max: maxLength,
          ));

Either<ValueFailure<num>, num> validatePositiveNumber(num input) =>
    input.isNegative
        ? left(ValueFailure.negativeNumber(failedValue: input))
        : right(input);
