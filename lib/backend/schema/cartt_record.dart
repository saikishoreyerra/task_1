import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarttRecord extends FirestoreRecord {
  CarttRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "clothes_itemlist" field.
  DocumentReference? _clothesItemlist;
  DocumentReference? get clothesItemlist => _clothesItemlist;
  bool hasClothesItemlist() => _clothesItemlist != null;

  // "groceries_itemlist" field.
  DocumentReference? _groceriesItemlist;
  DocumentReference? get groceriesItemlist => _groceriesItemlist;
  bool hasGroceriesItemlist() => _groceriesItemlist != null;

  // "watches_itemlist" field.
  DocumentReference? _watchesItemlist;
  DocumentReference? get watchesItemlist => _watchesItemlist;
  bool hasWatchesItemlist() => _watchesItemlist != null;

  void _initializeFields() {
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _clothesItemlist = snapshotData['clothes_itemlist'] as DocumentReference?;
    _groceriesItemlist =
        snapshotData['groceries_itemlist'] as DocumentReference?;
    _watchesItemlist = snapshotData['watches_itemlist'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cartt');

  static Stream<CarttRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarttRecord.fromSnapshot(s));

  static Future<CarttRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarttRecord.fromSnapshot(s));

  static CarttRecord fromSnapshot(DocumentSnapshot snapshot) => CarttRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarttRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarttRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarttRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarttRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarttRecordData({
  DocumentReference? createdBy,
  DocumentReference? clothesItemlist,
  DocumentReference? groceriesItemlist,
  DocumentReference? watchesItemlist,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_by': createdBy,
      'clothes_itemlist': clothesItemlist,
      'groceries_itemlist': groceriesItemlist,
      'watches_itemlist': watchesItemlist,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarttRecordDocumentEquality implements Equality<CarttRecord> {
  const CarttRecordDocumentEquality();

  @override
  bool equals(CarttRecord? e1, CarttRecord? e2) {
    return e1?.createdBy == e2?.createdBy &&
        e1?.clothesItemlist == e2?.clothesItemlist &&
        e1?.groceriesItemlist == e2?.groceriesItemlist &&
        e1?.watchesItemlist == e2?.watchesItemlist;
  }

  @override
  int hash(CarttRecord? e) => const ListEquality().hash([
        e?.createdBy,
        e?.clothesItemlist,
        e?.groceriesItemlist,
        e?.watchesItemlist
      ]);

  @override
  bool isValidKey(Object? o) => o is CarttRecord;
}
