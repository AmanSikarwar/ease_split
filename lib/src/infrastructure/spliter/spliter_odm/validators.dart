import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

class StringSingleLineAndNotEmptyValidator implements Validator {
  const StringSingleLineAndNotEmptyValidator();
  @override
  void validate(Object? value, String propertyName) {
    if (value == null) {
      throw ValidationException(
          propertyName, 'The $propertyName must not be null');
    }
    if (value is! String) {
      throw ValidationException(
          propertyName, 'The $propertyName must be a String');
    }
    if (value.isEmpty) {
      throw ValidationException(
          propertyName, 'The $propertyName must not be empty');
    }
    if (value.contains('\n')) {
      throw ValidationException(
          propertyName, 'The $propertyName must not contain new lines');
    }
  }
}

class EmailAddressValidator implements Validator {
  const EmailAddressValidator();
  @override
  void validate(Object? value, String propertyName) {
    if (value == null) {
      throw ValidationException(
          propertyName, 'The $propertyName must not be null');
    }
    if (value is! String) {
      throw ValidationException(
          propertyName, 'The $propertyName must be a String');
    }
    if (value.isEmpty) {
      throw ValidationException(
          propertyName, 'The $propertyName must not be empty');
    }
    if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(value)) {
      throw ValidationException(propertyName,
          'The $propertyName must be a valid email address');
    }
  }
}

class DescriptionValidator implements Validator {
  const DescriptionValidator();
  @override
  void validate(Object? value, String propertyName) {
    if (value == null) {
      throw ValidationException(
          propertyName, 'The $propertyName must not be null');
    }
    if (value is! String) {
      throw ValidationException(
          propertyName, 'The $propertyName must be a String');
    }
    if (value.length > 1000) {
      throw ValidationException(propertyName,
          'The $propertyName must not be longer than 1000 characters');
    }
  }
}

class ListNotEmptyValidator implements Validator {
  const ListNotEmptyValidator();
  @override
  void validate(Object? value, String propertyName) {
    if (value == null) {
      throw ValidationException(
          propertyName, 'The $propertyName must not be null');
    }
    if (value is! List) {
      throw ValidationException(
          propertyName, 'The $propertyName must be a List');
    }
    if (value.isEmpty) {
      throw ValidationException(
          propertyName, 'The $propertyName must not be empty');
    }
  }
}

class ValidationException implements Exception {
  final String propertyName;
  final String message;

  ValidationException(this.propertyName, this.message);
}
