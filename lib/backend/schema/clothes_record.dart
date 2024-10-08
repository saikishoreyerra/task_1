import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClothesRecord extends FirestoreRecord {
  ClothesRecord._(
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

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "isFav_cloth" field.
  bool? _isFavCloth;
  bool get isFavCloth => _isFavCloth ?? false;
  bool hasIsFavCloth() => _isFavCloth != null;

  // "Fav_cloth" field.
  List<DocumentReference>? _favCloth;
  List<DocumentReference> get favCloth => _favCloth ?? const [];
  bool hasFavCloth() => _favCloth != null;

  // "count_cloth" field.
  int? _countCloth;
  int get countCloth => _countCloth ?? 0;
  bool hasCountCloth() => _countCloth != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "ref_Id" field.
  int? _refId;
  int get refId => _refId ?? 0;
  bool hasRefId() => _refId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _desc = snapshotData['desc'] as String?;
    _isFavCloth = snapshotData['isFav_cloth'] as bool?;
    _favCloth = getDataList(snapshotData['Fav_cloth']);
    _countCloth = castToType<int>(snapshotData['count_cloth']);
    _type = snapshotData['type'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _refId = castToType<int>(snapshotData['ref_Id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clothes');

  static Stream<ClothesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClothesRecord.fromSnapshot(s));

  static Future<ClothesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClothesRecord.fromSnapshot(s));

  static ClothesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClothesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClothesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClothesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClothesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClothesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClothesRecordData({
  String? name,
  String? image,
  String? desc,
  bool? isFavCloth,
  int? countCloth,
  String? type,
  double? price,
  int? refId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'desc': desc,
      'isFav_cloth': isFavCloth,
      'count_cloth': countCloth,
      'type': type,
      'price': price,
      'ref_Id': refId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClothesRecordDocumentEquality implements Equality<ClothesRecord> {
  const ClothesRecordDocumentEquality();

  @override
  bool equals(ClothesRecord? e1, ClothesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.desc == e2?.desc &&
        e1?.isFavCloth == e2?.isFavCloth &&
        listEquality.equals(e1?.favCloth, e2?.favCloth) &&
        e1?.countCloth == e2?.countCloth &&
        e1?.type == e2?.type &&
        e1?.price == e2?.price &&
        e1?.refId == e2?.refId;
  }

  @override
  int hash(ClothesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.desc,
        e?.isFavCloth,
        e?.favCloth,
        e?.countCloth,
        e?.type,
        e?.price,
        e?.refId
      ]);

  @override
  bool isValidKey(Object? o) => o is ClothesRecord;
}
