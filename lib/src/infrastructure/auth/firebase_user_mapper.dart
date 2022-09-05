import 'package:ease_split/src/domain/auth/user.dart';
import 'package:ease_split/src/domain/auth/value_objects.dart';
import 'package:ease_split/src/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseUserMapper {
  FirebaseUserMapper();

  SignedInUser toDomain(User user) {
    return SignedInUser(
      displayName: StringSingleLine(
          user.displayName ?? user.email!.split("@").first),
      emailAddress: EmailAddress(user.email!),
      id: UniqueId.fromUniqueString(user.uid),
    );
  }
}
