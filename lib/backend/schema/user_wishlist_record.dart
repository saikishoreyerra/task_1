import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserWishlistRecord extends FirestoreRecord {
  UserWishlistRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uers_ref" field.
  DocumentReference? _uersRef;
  DocumentReference? get uersRef => _uersRef;
  bool hasUersRef() => _uersRef != null;

  // "clothes_ref" field.
  DocumentReference? _clothesRef;
  DocumentReference? get clothesRef => _clothesRef;
  bool hasClothesRef() => _clothesRef != null;

  // "groceries_ref" field.
  DocumentReference? _groceriesRef;
  DocumentReference? get groceriesRef => _groceriesRef;
  bool hasGroceriesRef() => _groceriesRef != null;

  // "watches_ref" field.
  DocumentReference? _watchesRef;
  DocumentReference? get watchesRef => _watchesRef;
  bool hasWatchesRef() => _watchesRef != null;

  void _initializeFields() {
    _uersRef = snapshotData['uers_ref'] as DocumentReference?;
    _clothesRef = snapshotData['clothes_ref'] as DocumentReference?;
    _groceriesRef = snapshotData['groceries_ref'] as DocumentReference?;
    _watchesRef = snapshotData['watches_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_wishlist');

  static Stream<UserWishlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserWishlistRecord.fromSnapshot(s));

  static Future<UserWishlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserWishlistRecord.fromSnapshot(s));

  static UserWishlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserWishlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserWishlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserWishlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserWishlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserWishlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserWishlistRecordData({
  DocumentReference? uersRef,
  DocumentReference? clothesRef,
  DocumentReference? groceriesRef,
  DocumentReference? watchesRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uers_ref': uersRef,
      'clothes_ref': clothesRef,
      'groceries_ref': groceriesRef,
      'watches_ref': watchesRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserWishlistRecordDocumentEquality
    implements Equality<UserWishlistRecord> {
  const UserWishlistRecordDocumentEquality();

  @override
  bool equals(UserWishlistRecord? e1, UserWishlistRecord? e2) {
    return e1?.uersRef == e2?.uersRef &&
        e1?.clothesRef == e2?.clothesRef &&
        e1?.groceriesRef == e2?.groceriesRef &&
        e1?.watchesRef == e2?.watchesRef;
  }

  @override
  int hash(UserWishlistRecord? e) => const ListEquality()
      .hash([e?.uersRef, e?.clothesRef, e?.groceriesRef, e?.watchesRef]);

  @override
  bool isValidKey(Object? o) => o is UserWishlistRecord;
}
