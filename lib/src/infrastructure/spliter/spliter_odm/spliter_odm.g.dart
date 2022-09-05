// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'spliter_odm.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SpliterUserOdmCollectionReference
    implements
        SpliterUserOdmQuery,
        FirestoreCollectionReference<SpliterUserOdm,
            SpliterUserOdmQuerySnapshot> {
  factory SpliterUserOdmCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SpliterUserOdmCollectionReference;

  static SpliterUserOdm fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SpliterUserOdm.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    SpliterUserOdm value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<SpliterUserOdm> get reference;

  @override
  SpliterUserOdmDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SpliterUserOdmDocumentReference> add(SpliterUserOdm value);
}

class _$SpliterUserOdmCollectionReference extends _$SpliterUserOdmQuery
    implements SpliterUserOdmCollectionReference {
  factory _$SpliterUserOdmCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SpliterUserOdmCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: SpliterUserOdmCollectionReference.fromFirestore,
            toFirestore: SpliterUserOdmCollectionReference.toFirestore,
          ),
    );
  }

  _$SpliterUserOdmCollectionReference._(
    CollectionReference<SpliterUserOdm> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<SpliterUserOdm> get reference =>
      super.reference as CollectionReference<SpliterUserOdm>;

  @override
  SpliterUserOdmDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SpliterUserOdmDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SpliterUserOdmDocumentReference> add(SpliterUserOdm value) {
    return reference
        .add(value)
        .then((ref) => SpliterUserOdmDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SpliterUserOdmCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SpliterUserOdmDocumentReference
    extends FirestoreDocumentReference<SpliterUserOdm,
        SpliterUserOdmDocumentSnapshot> {
  factory SpliterUserOdmDocumentReference(
          DocumentReference<SpliterUserOdm> reference) =
      _$SpliterUserOdmDocumentReference;

  DocumentReference<SpliterUserOdm> get reference;

  /// A reference to the [SpliterUserOdmCollectionReference] containing this document.
  SpliterUserOdmCollectionReference get parent {
    return _$SpliterUserOdmCollectionReference(reference.firestore);
  }

  late final SpliterGroupCollectionReference groups =
      _$SpliterGroupCollectionReference(
    reference,
  );

  @override
  Stream<SpliterUserOdmDocumentSnapshot> snapshots();

  @override
  Future<SpliterUserOdmDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String id,
    String name,
    String email,
    num owe,
    num owed,
    num totalExpenditure,
    Timestamp lastUpdated,
  });

  Future<void> set(SpliterUserOdm value);
}

class _$SpliterUserOdmDocumentReference extends FirestoreDocumentReference<
    SpliterUserOdm,
    SpliterUserOdmDocumentSnapshot> implements SpliterUserOdmDocumentReference {
  _$SpliterUserOdmDocumentReference(this.reference);

  @override
  final DocumentReference<SpliterUserOdm> reference;

  /// A reference to the [SpliterUserOdmCollectionReference] containing this document.
  SpliterUserOdmCollectionReference get parent {
    return _$SpliterUserOdmCollectionReference(reference.firestore);
  }

  late final SpliterGroupCollectionReference groups =
      _$SpliterGroupCollectionReference(
    reference,
  );

  @override
  Stream<SpliterUserOdmDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return SpliterUserOdmDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<SpliterUserOdmDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return SpliterUserOdmDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? id = _sentinel,
    Object? name = _sentinel,
    Object? email = _sentinel,
    Object? owe = _sentinel,
    Object? owed = _sentinel,
    Object? totalExpenditure = _sentinel,
    Object? lastUpdated = _sentinel,
  }) async {
    final json = {
      if (id != _sentinel) "id": id as String,
      if (name != _sentinel) "name": name as String,
      if (email != _sentinel) "email": email as String,
      if (owe != _sentinel) "owe": owe as num,
      if (owed != _sentinel) "owed": owed as num,
      if (totalExpenditure != _sentinel)
        "totalExpenditure": totalExpenditure as num,
      if (lastUpdated != _sentinel) "lastUpdated": lastUpdated as Timestamp,
    };

    return reference.update(json);
  }

  Future<void> set(SpliterUserOdm value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is SpliterUserOdmDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class SpliterUserOdmDocumentSnapshot
    extends FirestoreDocumentSnapshot<SpliterUserOdm> {
  SpliterUserOdmDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<SpliterUserOdm> snapshot;

  @override
  SpliterUserOdmDocumentReference get reference {
    return SpliterUserOdmDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SpliterUserOdm? data;
}

abstract class SpliterUserOdmQuery
    implements QueryReference<SpliterUserOdm, SpliterUserOdmQuerySnapshot> {
  @override
  SpliterUserOdmQuery limit(int limit);

  @override
  SpliterUserOdmQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SpliterUserOdmQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SpliterUserOdmQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SpliterUserOdmQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterUserOdmQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterUserOdmQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterUserOdmQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterUserOdmQuery whereOwe({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });
  SpliterUserOdmQuery whereOwed({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });
  SpliterUserOdmQuery whereTotalExpenditure({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });
  SpliterUserOdmQuery whereLastUpdated({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  SpliterUserOdmQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  SpliterUserOdmQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  SpliterUserOdmQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  SpliterUserOdmQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  SpliterUserOdmQuery orderByOwe({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  SpliterUserOdmQuery orderByOwed({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  SpliterUserOdmQuery orderByTotalExpenditure({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });

  SpliterUserOdmQuery orderByLastUpdated({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  });
}

class _$SpliterUserOdmQuery
    extends QueryReference<SpliterUserOdm, SpliterUserOdmQuerySnapshot>
    implements SpliterUserOdmQuery {
  _$SpliterUserOdmQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<SpliterUserOdm> reference;

  SpliterUserOdmQuerySnapshot _decodeSnapshot(
    QuerySnapshot<SpliterUserOdm> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return SpliterUserOdmQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<SpliterUserOdmDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: SpliterUserOdmDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return SpliterUserOdmQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<SpliterUserOdmQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<SpliterUserOdmQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  SpliterUserOdmQuery limit(int limit) {
    return _$SpliterUserOdmQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  SpliterUserOdmQuery limitToLast(int limit) {
    return _$SpliterUserOdmQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  SpliterUserOdmQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        _$SpliterUserOdmFieldMap["id"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        _$SpliterUserOdmFieldMap["name"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        _$SpliterUserOdmFieldMap["email"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereOwe({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        _$SpliterUserOdmFieldMap["owe"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereOwed({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        _$SpliterUserOdmFieldMap["owed"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereTotalExpenditure({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        _$SpliterUserOdmFieldMap["totalExpenditure"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery whereLastUpdated({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SpliterUserOdmQuery(
      reference.where(
        _$SpliterUserOdmFieldMap["lastUpdated"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterUserOdmQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterUserOdmFieldMap["id"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterUserOdmFieldMap["name"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterUserOdmFieldMap["email"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery orderByOwe({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterUserOdmFieldMap["owe"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery orderByOwed({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterUserOdmFieldMap["owed"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery orderByTotalExpenditure({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterUserOdmFieldMap["totalExpenditure"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  SpliterUserOdmQuery orderByLastUpdated({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterUserOdmDocumentSnapshot? startAtDocument,
    SpliterUserOdmDocumentSnapshot? endAtDocument,
    SpliterUserOdmDocumentSnapshot? endBeforeDocument,
    SpliterUserOdmDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterUserOdmFieldMap["lastUpdated"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterUserOdmQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$SpliterUserOdmQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SpliterUserOdmQuerySnapshot extends FirestoreQuerySnapshot<SpliterUserOdm,
    SpliterUserOdmQueryDocumentSnapshot> {
  SpliterUserOdmQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<SpliterUserOdm> snapshot;

  @override
  final List<SpliterUserOdmQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SpliterUserOdmDocumentSnapshot>>
      docChanges;
}

class SpliterUserOdmQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SpliterUserOdm>
    implements SpliterUserOdmDocumentSnapshot {
  SpliterUserOdmQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<SpliterUserOdm> snapshot;

  @override
  SpliterUserOdmDocumentReference get reference {
    return SpliterUserOdmDocumentReference(snapshot.reference);
  }

  @override
  final SpliterUserOdm data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SpliterGroupCollectionReference
    implements
        SpliterGroupQuery,
        FirestoreCollectionReference<SpliterGroup, SpliterGroupQuerySnapshot> {
  factory SpliterGroupCollectionReference(
    DocumentReference<SpliterUserOdm> parent,
  ) = _$SpliterGroupCollectionReference;

  static SpliterGroup fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SpliterGroup.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    SpliterGroup value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<SpliterGroup> get reference;

  /// A reference to the containing [SpliterUserOdmDocumentReference] if this is a subcollection.
  SpliterUserOdmDocumentReference get parent;

  @override
  SpliterGroupDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SpliterGroupDocumentReference> add(SpliterGroup value);
}

class _$SpliterGroupCollectionReference extends _$SpliterGroupQuery
    implements SpliterGroupCollectionReference {
  factory _$SpliterGroupCollectionReference(
    DocumentReference<SpliterUserOdm> parent,
  ) {
    return _$SpliterGroupCollectionReference._(
      SpliterUserOdmDocumentReference(parent),
      parent.collection('groups').withConverter(
            fromFirestore: SpliterGroupCollectionReference.fromFirestore,
            toFirestore: SpliterGroupCollectionReference.toFirestore,
          ),
    );
  }

  _$SpliterGroupCollectionReference._(
    this.parent,
    CollectionReference<SpliterGroup> reference,
  ) : super(reference, reference);

  @override
  final SpliterUserOdmDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<SpliterGroup> get reference =>
      super.reference as CollectionReference<SpliterGroup>;

  @override
  SpliterGroupDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SpliterGroupDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SpliterGroupDocumentReference> add(SpliterGroup value) {
    return reference
        .add(value)
        .then((ref) => SpliterGroupDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SpliterGroupCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SpliterGroupDocumentReference extends FirestoreDocumentReference<
    SpliterGroup, SpliterGroupDocumentSnapshot> {
  factory SpliterGroupDocumentReference(
          DocumentReference<SpliterGroup> reference) =
      _$SpliterGroupDocumentReference;

  DocumentReference<SpliterGroup> get reference;

  /// A reference to the [SpliterGroupCollectionReference] containing this document.
  SpliterGroupCollectionReference get parent {
    return _$SpliterGroupCollectionReference(
      reference.parent.parent!.withConverter<SpliterUserOdm>(
        fromFirestore: SpliterUserOdmCollectionReference.fromFirestore,
        toFirestore: SpliterUserOdmCollectionReference.toFirestore,
      ),
    );
  }

  late final ExpenseCollectionReference expenses = _$ExpenseCollectionReference(
    reference,
  );

  late final GroupMemberCollectionReference members =
      _$GroupMemberCollectionReference(
    reference,
  );

  @override
  Stream<SpliterGroupDocumentSnapshot> snapshots();

  @override
  Future<SpliterGroupDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String id,
    String name,
    String description,
    String category,
    String createdBy,
    Timestamp createdOn,
    List<String> members,
    num totalExpenditure,
  });

  Future<void> set(SpliterGroup value);
}

class _$SpliterGroupDocumentReference extends FirestoreDocumentReference<
    SpliterGroup,
    SpliterGroupDocumentSnapshot> implements SpliterGroupDocumentReference {
  _$SpliterGroupDocumentReference(this.reference);

  @override
  final DocumentReference<SpliterGroup> reference;

  /// A reference to the [SpliterGroupCollectionReference] containing this document.
  SpliterGroupCollectionReference get parent {
    return _$SpliterGroupCollectionReference(
      reference.parent.parent!.withConverter<SpliterUserOdm>(
        fromFirestore: SpliterUserOdmCollectionReference.fromFirestore,
        toFirestore: SpliterUserOdmCollectionReference.toFirestore,
      ),
    );
  }

  late final ExpenseCollectionReference expenses = _$ExpenseCollectionReference(
    reference,
  );

  late final GroupMemberCollectionReference members =
      _$GroupMemberCollectionReference(
    reference,
  );

  @override
  Stream<SpliterGroupDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return SpliterGroupDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<SpliterGroupDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return SpliterGroupDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? id = _sentinel,
    Object? name = _sentinel,
    Object? description = _sentinel,
    Object? category = _sentinel,
    Object? createdBy = _sentinel,
    Object? createdOn = _sentinel,
    Object? members = _sentinel,
    Object? totalExpenditure = _sentinel,
  }) async {
    final json = {
      if (id != _sentinel) "id": id as String,
      if (name != _sentinel) "name": name as String,
      if (description != _sentinel) "description": description as String,
      if (category != _sentinel) "category": category as String,
      if (createdBy != _sentinel) "createdBy": createdBy as String,
      if (createdOn != _sentinel) "createdOn": createdOn as Timestamp,
      if (members != _sentinel) "members": members as List<String>,
      if (totalExpenditure != _sentinel)
        "totalExpenditure": totalExpenditure as num,
    };

    return reference.update(json);
  }

  Future<void> set(SpliterGroup value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is SpliterGroupDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class SpliterGroupDocumentSnapshot
    extends FirestoreDocumentSnapshot<SpliterGroup> {
  SpliterGroupDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<SpliterGroup> snapshot;

  @override
  SpliterGroupDocumentReference get reference {
    return SpliterGroupDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SpliterGroup? data;
}

abstract class SpliterGroupQuery
    implements QueryReference<SpliterGroup, SpliterGroupQuerySnapshot> {
  @override
  SpliterGroupQuery limit(int limit);

  @override
  SpliterGroupQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SpliterGroupQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SpliterGroupQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SpliterGroupQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterGroupQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterGroupQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterGroupQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterGroupQuery whereCategory({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterGroupQuery whereCreatedBy({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SpliterGroupQuery whereCreatedOn({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  SpliterGroupQuery whereMembers({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  SpliterGroupQuery whereTotalExpenditure({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });

  SpliterGroupQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderByCategory({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderByCreatedBy({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderByCreatedOn({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderByMembers({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });

  SpliterGroupQuery orderByTotalExpenditure({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  });
}

class _$SpliterGroupQuery
    extends QueryReference<SpliterGroup, SpliterGroupQuerySnapshot>
    implements SpliterGroupQuery {
  _$SpliterGroupQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<SpliterGroup> reference;

  SpliterGroupQuerySnapshot _decodeSnapshot(
    QuerySnapshot<SpliterGroup> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return SpliterGroupQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<SpliterGroupDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: SpliterGroupDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return SpliterGroupQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<SpliterGroupQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<SpliterGroupQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  SpliterGroupQuery limit(int limit) {
    return _$SpliterGroupQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  SpliterGroupQuery limitToLast(int limit) {
    return _$SpliterGroupQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  SpliterGroupQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["id"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["name"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["description"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereCategory({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["category"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereCreatedBy({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["createdBy"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereCreatedOn({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["createdOn"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereMembers({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["members"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  SpliterGroupQuery whereTotalExpenditure({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$SpliterGroupQuery(
      reference.where(
        _$SpliterGroupFieldMap["totalExpenditure"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  SpliterGroupQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["id"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["name"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["description"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderByCategory({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["category"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderByCreatedBy({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["createdBy"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderByCreatedOn({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["createdOn"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderByMembers({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["members"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  SpliterGroupQuery orderByTotalExpenditure({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SpliterGroupDocumentSnapshot? startAtDocument,
    SpliterGroupDocumentSnapshot? endAtDocument,
    SpliterGroupDocumentSnapshot? endBeforeDocument,
    SpliterGroupDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$SpliterGroupFieldMap["totalExpenditure"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$SpliterGroupQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$SpliterGroupQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SpliterGroupQuerySnapshot extends FirestoreQuerySnapshot<SpliterGroup,
    SpliterGroupQueryDocumentSnapshot> {
  SpliterGroupQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<SpliterGroup> snapshot;

  @override
  final List<SpliterGroupQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SpliterGroupDocumentSnapshot>> docChanges;
}

class SpliterGroupQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SpliterGroup>
    implements SpliterGroupDocumentSnapshot {
  SpliterGroupQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<SpliterGroup> snapshot;

  @override
  SpliterGroupDocumentReference get reference {
    return SpliterGroupDocumentReference(snapshot.reference);
  }

  @override
  final SpliterGroup data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ExpenseCollectionReference
    implements
        ExpenseQuery,
        FirestoreCollectionReference<Expense, ExpenseQuerySnapshot> {
  factory ExpenseCollectionReference(
    DocumentReference<SpliterGroup> parent,
  ) = _$ExpenseCollectionReference;

  static Expense fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Expense.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Expense value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Expense> get reference;

  /// A reference to the containing [SpliterGroupDocumentReference] if this is a subcollection.
  SpliterGroupDocumentReference get parent;

  @override
  ExpenseDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ExpenseDocumentReference> add(Expense value);
}

class _$ExpenseCollectionReference extends _$ExpenseQuery
    implements ExpenseCollectionReference {
  factory _$ExpenseCollectionReference(
    DocumentReference<SpliterGroup> parent,
  ) {
    return _$ExpenseCollectionReference._(
      SpliterGroupDocumentReference(parent),
      parent.collection('expenses').withConverter(
            fromFirestore: ExpenseCollectionReference.fromFirestore,
            toFirestore: ExpenseCollectionReference.toFirestore,
          ),
    );
  }

  _$ExpenseCollectionReference._(
    this.parent,
    CollectionReference<Expense> reference,
  ) : super(reference, reference);

  @override
  final SpliterGroupDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Expense> get reference =>
      super.reference as CollectionReference<Expense>;

  @override
  ExpenseDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ExpenseDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ExpenseDocumentReference> add(Expense value) {
    return reference.add(value).then((ref) => ExpenseDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExpenseCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ExpenseDocumentReference
    extends FirestoreDocumentReference<Expense, ExpenseDocumentSnapshot> {
  factory ExpenseDocumentReference(DocumentReference<Expense> reference) =
      _$ExpenseDocumentReference;

  DocumentReference<Expense> get reference;

  /// A reference to the [ExpenseCollectionReference] containing this document.
  ExpenseCollectionReference get parent {
    return _$ExpenseCollectionReference(
      reference.parent.parent!.withConverter<SpliterGroup>(
        fromFirestore: SpliterGroupCollectionReference.fromFirestore,
        toFirestore: SpliterGroupCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ExpenseDocumentSnapshot> snapshots();

  @override
  Future<ExpenseDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String id,
    String name,
    num amount,
    String payedBy,
    String groupId,
    String groupName,
    Timestamp createdOn,
  });

  Future<void> set(Expense value);
}

class _$ExpenseDocumentReference
    extends FirestoreDocumentReference<Expense, ExpenseDocumentSnapshot>
    implements ExpenseDocumentReference {
  _$ExpenseDocumentReference(this.reference);

  @override
  final DocumentReference<Expense> reference;

  /// A reference to the [ExpenseCollectionReference] containing this document.
  ExpenseCollectionReference get parent {
    return _$ExpenseCollectionReference(
      reference.parent.parent!.withConverter<SpliterGroup>(
        fromFirestore: SpliterGroupCollectionReference.fromFirestore,
        toFirestore: SpliterGroupCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ExpenseDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return ExpenseDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ExpenseDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ExpenseDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? id = _sentinel,
    Object? name = _sentinel,
    Object? amount = _sentinel,
    Object? payedBy = _sentinel,
    Object? groupId = _sentinel,
    Object? groupName = _sentinel,
    Object? createdOn = _sentinel,
  }) async {
    final json = {
      if (id != _sentinel) "id": id as String,
      if (name != _sentinel) "name": name as String,
      if (amount != _sentinel) "amount": amount as num,
      if (payedBy != _sentinel) "payedBy": payedBy as String,
      if (groupId != _sentinel) "groupId": groupId as String,
      if (groupName != _sentinel) "groupName": groupName as String,
      if (createdOn != _sentinel) "createdOn": createdOn as Timestamp,
    };

    return reference.update(json);
  }

  Future<void> set(Expense value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is ExpenseDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class ExpenseDocumentSnapshot extends FirestoreDocumentSnapshot<Expense> {
  ExpenseDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Expense> snapshot;

  @override
  ExpenseDocumentReference get reference {
    return ExpenseDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Expense? data;
}

abstract class ExpenseQuery
    implements QueryReference<Expense, ExpenseQuerySnapshot> {
  @override
  ExpenseQuery limit(int limit);

  @override
  ExpenseQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ExpenseQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ExpenseQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ExpenseQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExpenseQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExpenseQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExpenseQuery whereAmount({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });
  ExpenseQuery wherePayedBy({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExpenseQuery whereGroupId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExpenseQuery whereGroupName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExpenseQuery whereCreatedOn({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  ExpenseQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  ExpenseQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  ExpenseQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  ExpenseQuery orderByAmount({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  ExpenseQuery orderByPayedBy({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  ExpenseQuery orderByGroupId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  ExpenseQuery orderByGroupName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });

  ExpenseQuery orderByCreatedOn({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  });
}

class _$ExpenseQuery extends QueryReference<Expense, ExpenseQuerySnapshot>
    implements ExpenseQuery {
  _$ExpenseQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Expense> reference;

  ExpenseQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Expense> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ExpenseQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ExpenseDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ExpenseDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ExpenseQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ExpenseQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ExpenseQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ExpenseQuery limit(int limit) {
    return _$ExpenseQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ExpenseQuery limitToLast(int limit) {
    return _$ExpenseQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  ExpenseQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ExpenseQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  ExpenseQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        _$ExpenseFieldMap["id"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        _$ExpenseFieldMap["name"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery whereAmount({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        _$ExpenseFieldMap["amount"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery wherePayedBy({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        _$ExpenseFieldMap["payedBy"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery whereGroupId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        _$ExpenseFieldMap["groupId"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery whereGroupName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        _$ExpenseFieldMap["groupName"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery whereCreatedOn({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$ExpenseQuery(
      reference.where(
        _$ExpenseFieldMap["createdOn"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ExpenseQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$ExpenseFieldMap["id"]!, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$ExpenseFieldMap["name"]!, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$ExpenseFieldMap["amount"]!, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery orderByPayedBy({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ExpenseFieldMap["payedBy"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery orderByGroupId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ExpenseFieldMap["groupId"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery orderByGroupName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ExpenseFieldMap["groupName"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  ExpenseQuery orderByCreatedOn({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExpenseDocumentSnapshot? startAtDocument,
    ExpenseDocumentSnapshot? endAtDocument,
    ExpenseDocumentSnapshot? endBeforeDocument,
    ExpenseDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$ExpenseFieldMap["createdOn"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ExpenseQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExpenseQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ExpenseQuerySnapshot
    extends FirestoreQuerySnapshot<Expense, ExpenseQueryDocumentSnapshot> {
  ExpenseQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Expense> snapshot;

  @override
  final List<ExpenseQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ExpenseDocumentSnapshot>> docChanges;
}

class ExpenseQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Expense>
    implements ExpenseDocumentSnapshot {
  ExpenseQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Expense> snapshot;

  @override
  ExpenseDocumentReference get reference {
    return ExpenseDocumentReference(snapshot.reference);
  }

  @override
  final Expense data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class GroupMemberCollectionReference
    implements
        GroupMemberQuery,
        FirestoreCollectionReference<GroupMember, GroupMemberQuerySnapshot> {
  factory GroupMemberCollectionReference(
    DocumentReference<SpliterGroup> parent,
  ) = _$GroupMemberCollectionReference;

  static GroupMember fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return GroupMember.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    GroupMember value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<GroupMember> get reference;

  /// A reference to the containing [SpliterGroupDocumentReference] if this is a subcollection.
  SpliterGroupDocumentReference get parent;

  @override
  GroupMemberDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<GroupMemberDocumentReference> add(GroupMember value);
}

class _$GroupMemberCollectionReference extends _$GroupMemberQuery
    implements GroupMemberCollectionReference {
  factory _$GroupMemberCollectionReference(
    DocumentReference<SpliterGroup> parent,
  ) {
    return _$GroupMemberCollectionReference._(
      SpliterGroupDocumentReference(parent),
      parent.collection('members').withConverter(
            fromFirestore: GroupMemberCollectionReference.fromFirestore,
            toFirestore: GroupMemberCollectionReference.toFirestore,
          ),
    );
  }

  _$GroupMemberCollectionReference._(
    this.parent,
    CollectionReference<GroupMember> reference,
  ) : super(reference, reference);

  @override
  final SpliterGroupDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<GroupMember> get reference =>
      super.reference as CollectionReference<GroupMember>;

  @override
  GroupMemberDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return GroupMemberDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<GroupMemberDocumentReference> add(GroupMember value) {
    return reference
        .add(value)
        .then((ref) => GroupMemberDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$GroupMemberCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class GroupMemberDocumentReference extends FirestoreDocumentReference<
    GroupMember, GroupMemberDocumentSnapshot> {
  factory GroupMemberDocumentReference(
          DocumentReference<GroupMember> reference) =
      _$GroupMemberDocumentReference;

  DocumentReference<GroupMember> get reference;

  /// A reference to the [GroupMemberCollectionReference] containing this document.
  GroupMemberCollectionReference get parent {
    return _$GroupMemberCollectionReference(
      reference.parent.parent!.withConverter<SpliterGroup>(
        fromFirestore: SpliterGroupCollectionReference.fromFirestore,
        toFirestore: SpliterGroupCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<GroupMemberDocumentSnapshot> snapshots();

  @override
  Future<GroupMemberDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String id,
    String name,
    String email,
    num owe,
    num owed,
    Timestamp joinedOn,
    num totalExpenditure,
  });

  Future<void> set(GroupMember value);
}

class _$GroupMemberDocumentReference
    extends FirestoreDocumentReference<GroupMember, GroupMemberDocumentSnapshot>
    implements GroupMemberDocumentReference {
  _$GroupMemberDocumentReference(this.reference);

  @override
  final DocumentReference<GroupMember> reference;

  /// A reference to the [GroupMemberCollectionReference] containing this document.
  GroupMemberCollectionReference get parent {
    return _$GroupMemberCollectionReference(
      reference.parent.parent!.withConverter<SpliterGroup>(
        fromFirestore: SpliterGroupCollectionReference.fromFirestore,
        toFirestore: SpliterGroupCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<GroupMemberDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return GroupMemberDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<GroupMemberDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return GroupMemberDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? id = _sentinel,
    Object? name = _sentinel,
    Object? email = _sentinel,
    Object? owe = _sentinel,
    Object? owed = _sentinel,
    Object? joinedOn = _sentinel,
    Object? totalExpenditure = _sentinel,
  }) async {
    final json = {
      if (id != _sentinel) "id": id as String,
      if (name != _sentinel) "name": name as String,
      if (email != _sentinel) "email": email as String,
      if (owe != _sentinel) "owe": owe as num,
      if (owed != _sentinel) "owed": owed as num,
      if (joinedOn != _sentinel) "joinedOn": joinedOn as Timestamp,
      if (totalExpenditure != _sentinel)
        "totalExpenditure": totalExpenditure as num,
    };

    return reference.update(json);
  }

  Future<void> set(GroupMember value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupMemberDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class GroupMemberDocumentSnapshot
    extends FirestoreDocumentSnapshot<GroupMember> {
  GroupMemberDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<GroupMember> snapshot;

  @override
  GroupMemberDocumentReference get reference {
    return GroupMemberDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final GroupMember? data;
}

abstract class GroupMemberQuery
    implements QueryReference<GroupMember, GroupMemberQuerySnapshot> {
  @override
  GroupMemberQuery limit(int limit);

  @override
  GroupMemberQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  GroupMemberQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  GroupMemberQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  GroupMemberQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  GroupMemberQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  GroupMemberQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  GroupMemberQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  GroupMemberQuery whereOwe({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });
  GroupMemberQuery whereOwed({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });
  GroupMemberQuery whereJoinedOn({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  GroupMemberQuery whereTotalExpenditure({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });

  GroupMemberQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  GroupMemberQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  GroupMemberQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  GroupMemberQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  GroupMemberQuery orderByOwe({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  GroupMemberQuery orderByOwed({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  GroupMemberQuery orderByJoinedOn({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });

  GroupMemberQuery orderByTotalExpenditure({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  });
}

class _$GroupMemberQuery
    extends QueryReference<GroupMember, GroupMemberQuerySnapshot>
    implements GroupMemberQuery {
  _$GroupMemberQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<GroupMember> reference;

  GroupMemberQuerySnapshot _decodeSnapshot(
    QuerySnapshot<GroupMember> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return GroupMemberQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<GroupMemberDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: GroupMemberDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return GroupMemberQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<GroupMemberQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<GroupMemberQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  GroupMemberQuery limit(int limit) {
    return _$GroupMemberQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  GroupMemberQuery limitToLast(int limit) {
    return _$GroupMemberQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  GroupMemberQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        _$GroupMemberFieldMap["id"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        _$GroupMemberFieldMap["name"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        _$GroupMemberFieldMap["email"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereOwe({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        _$GroupMemberFieldMap["owe"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereOwed({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        _$GroupMemberFieldMap["owed"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereJoinedOn({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        _$GroupMemberFieldMap["joinedOn"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery whereTotalExpenditure({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$GroupMemberQuery(
      reference.where(
        _$GroupMemberFieldMap["totalExpenditure"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GroupMemberQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query =
        reference.orderBy(_$GroupMemberFieldMap["id"]!, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$GroupMemberFieldMap["name"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$GroupMemberFieldMap["email"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery orderByOwe({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$GroupMemberFieldMap["owe"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery orderByOwed({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$GroupMemberFieldMap["owed"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery orderByJoinedOn({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$GroupMemberFieldMap["joinedOn"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  GroupMemberQuery orderByTotalExpenditure({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GroupMemberDocumentSnapshot? startAtDocument,
    GroupMemberDocumentSnapshot? endAtDocument,
    GroupMemberDocumentSnapshot? endBeforeDocument,
    GroupMemberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$GroupMemberFieldMap["totalExpenditure"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GroupMemberQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$GroupMemberQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class GroupMemberQuerySnapshot extends FirestoreQuerySnapshot<GroupMember,
    GroupMemberQueryDocumentSnapshot> {
  GroupMemberQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<GroupMember> snapshot;

  @override
  final List<GroupMemberQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<GroupMemberDocumentSnapshot>> docChanges;
}

class GroupMemberQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<GroupMember>
    implements GroupMemberDocumentSnapshot {
  GroupMemberQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<GroupMember> snapshot;

  @override
  GroupMemberDocumentReference get reference {
    return GroupMemberDocumentReference(snapshot.reference);
  }

  @override
  final GroupMember data;
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

void _$assertSpliterUserOdm(SpliterUserOdm instance) {
  const StringSingleLineAndNotEmptyValidator().validate(instance.id, "id");
  const StringSingleLineAndNotEmptyValidator().validate(instance.name, "name");
  const EmailAddressValidator().validate(instance.email, "email");
  const Min(0).validate(instance.owe, "owe");
  const Min(0).validate(instance.owed, "owed");
  const Min(0).validate(instance.totalExpenditure, "totalExpenditure");
}

void _$assertSpliterGroup(SpliterGroup instance) {
  const StringSingleLineAndNotEmptyValidator().validate(instance.id, "id");
  const StringSingleLineAndNotEmptyValidator().validate(instance.name, "name");
  const DescriptionValidator().validate(instance.description, "description");
  const StringSingleLineAndNotEmptyValidator()
      .validate(instance.category, "category");
  const StringSingleLineAndNotEmptyValidator()
      .validate(instance.createdBy, "createdBy");
  const ListNotEmptyValidator().validate(instance.members, "members");
  const Min(0).validate(instance.totalExpenditure, "totalExpenditure");
}

void _$assertGroupMember(GroupMember instance) {
  const StringSingleLineAndNotEmptyValidator().validate(instance.id, "id");
  const StringSingleLineAndNotEmptyValidator().validate(instance.name, "name");
  const EmailAddressValidator().validate(instance.email, "email");
  const Min(0).validate(instance.owe, "owe");
  const Min(0).validate(instance.owed, "owed");
  const Min(0).validate(instance.totalExpenditure, "totalExpenditure");
}

void _$assertExpense(Expense instance) {
  const StringSingleLineAndNotEmptyValidator().validate(instance.id, "id");
  const StringSingleLineAndNotEmptyValidator().validate(instance.name, "name");
  const Min(0).validate(instance.amount, "amount");
  const StringSingleLineAndNotEmptyValidator()
      .validate(instance.payedBy, "payedBy");
  const StringSingleLineAndNotEmptyValidator()
      .validate(instance.groupId, "groupId");
  const StringSingleLineAndNotEmptyValidator()
      .validate(instance.groupName, "groupName");
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpliterUserOdm _$SpliterUserOdmFromJson(Map<String, dynamic> json) =>
    SpliterUserOdm(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      owe: json['owe'] as num,
      owed: json['owed'] as num,
      totalExpenditure: json['totalExpenditure'] as num,
      lastUpdated: const FirestoreTimestampConverter()
          .fromJson(json['lastUpdated'] as Timestamp),
    );

const _$SpliterUserOdmFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'email': 'email',
  'owe': 'owe',
  'owed': 'owed',
  'totalExpenditure': 'totalExpenditure',
  'lastUpdated': 'lastUpdated',
};

Map<String, dynamic> _$SpliterUserOdmToJson(SpliterUserOdm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'owe': instance.owe,
      'owed': instance.owed,
      'totalExpenditure': instance.totalExpenditure,
      'lastUpdated':
          const FirestoreTimestampConverter().toJson(instance.lastUpdated),
    };

SpliterGroup _$SpliterGroupFromJson(Map<String, dynamic> json) => SpliterGroup(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      createdBy: json['createdBy'] as String,
      createdOn: const FirestoreTimestampConverter()
          .fromJson(json['createdOn'] as Timestamp),
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      totalExpenditure: json['totalExpenditure'] as num,
    );

const _$SpliterGroupFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'description': 'description',
  'category': 'category',
  'createdBy': 'createdBy',
  'createdOn': 'createdOn',
  'members': 'members',
  'totalExpenditure': 'totalExpenditure',
};

Map<String, dynamic> _$SpliterGroupToJson(SpliterGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'createdBy': instance.createdBy,
      'createdOn':
          const FirestoreTimestampConverter().toJson(instance.createdOn),
      'members': instance.members,
      'totalExpenditure': instance.totalExpenditure,
    };

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) => GroupMember(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      owe: json['owe'] as num,
      owed: json['owed'] as num,
      joinedOn: const FirestoreTimestampConverter()
          .fromJson(json['joinedOn'] as Timestamp),
      totalExpenditure: json['totalExpenditure'] as num,
    );

const _$GroupMemberFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'email': 'email',
  'owe': 'owe',
  'owed': 'owed',
  'joinedOn': 'joinedOn',
  'totalExpenditure': 'totalExpenditure',
};

Map<String, dynamic> _$GroupMemberToJson(GroupMember instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'owe': instance.owe,
      'owed': instance.owed,
      'joinedOn': const FirestoreTimestampConverter().toJson(instance.joinedOn),
      'totalExpenditure': instance.totalExpenditure,
    };

Expense _$ExpenseFromJson(Map<String, dynamic> json) => Expense(
      id: json['id'] as String,
      name: json['name'] as String,
      amount: json['amount'] as num,
      payedBy: json['payedBy'] as String,
      groupId: json['groupId'] as String,
      groupName: json['groupName'] as String,
      createdOn: const FirestoreTimestampConverter()
          .fromJson(json['createdOn'] as Timestamp),
    );

const _$ExpenseFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'amount': 'amount',
  'payedBy': 'payedBy',
  'groupId': 'groupId',
  'groupName': 'groupName',
  'createdOn': 'createdOn',
};

Map<String, dynamic> _$ExpenseToJson(Expense instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'payedBy': instance.payedBy,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'createdOn':
          const FirestoreTimestampConverter().toJson(instance.createdOn),
    };
