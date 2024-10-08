import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WatchesRecord extends FirestoreRecord {
  WatchesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "prize" field.
  String? _prize;
  String get prize => _prize ?? '';
  bool hasPrize() => _prize != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _prize = snapshotData['prize'] as String?;
    _desc = snapshotData['desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('watches');

  static Stream<WatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WatchesRecord.fromSnapshot(s));

  static Future<WatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WatchesRecord.fromSnapshot(s));

  static WatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWatchesRecordData({
  String? name,
  String? image,
  String? prize,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'prize': prize,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class WatchesRecordDocumentEquality implements Equality<WatchesRecord> {
  const WatchesRecordDocumentEquality();

  @override
  bool equals(WatchesRecord? e1, WatchesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.prize == e2?.prize &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(WatchesRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.prize, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is WatchesRecord;
}
