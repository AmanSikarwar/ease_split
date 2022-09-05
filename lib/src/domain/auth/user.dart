import 'package:ease_split/src/domain/auth/value_objects.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class SignedInUser with _$SignedInUser {
  const factory SignedInUser({
    required UniqueId id,
    required StringSingleLine displayName,
    required EmailAddress emailAddress,
  }) = _SignedInUser;
}
