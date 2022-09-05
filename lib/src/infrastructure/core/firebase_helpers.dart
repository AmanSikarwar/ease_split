import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ease_split/src/domain/auth/auth_interface.dart';
import 'package:ease_split/src/domain/core/errors.dart';
import 'package:ease_split/src/injection.dart';

extension FirestoreX on FirebaseFirestore {
  DocumentReference userDocument() {
    final userOption = getIt<AuthInterface>().getSignedInUser();
    final user =
        userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

// extension DocumentRefrenceX on DocumentReference {
//   CollectionReference get groupCollection => collection("groups");

//   CollectionReference get expenditureCollection => collection("expenditures");

//   CollectionReference get friendCollection => collection("friends");

//   CollectionReference get memberCollection => collection("members");
// }
