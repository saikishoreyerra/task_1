import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroceriesRecord extends FirestoreRecord {
  GroceriesRecord._(
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

  // "isfav_groc" field.
  bool? _isfavGroc;
  bool get isfavGroc => _isfavGroc ?? false;
  bool hasIsfavGroc() => _isfavGroc != null;

  // "Fav_groc" field.
  List<DocumentReference>? _favGroc;
  List<DocumentReference> get favGroc => _favGroc ?? const [];
  bool hasFavGroc() => _favGroc != null;

  // "cart_groc" field.
  List<bool>? _cartGroc;
  List<bool> get cartGroc => _cartGroc ?? const [];
  bool hasCartGroc() => _cartGroc != null;

  // "count_groc" field.
  int? _countGroc;
  int get countGroc => _countGroc ?? 0;
  bool hasCountGroc() => _countGroc != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "ref_Id" field.
  int? _refId;
  int get refId => _refId ?? 0;
  bool hasRefId() => _refId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _desc = snapshotData['desc'] as String?;
    _isfavGroc = snapshotData['isfav_groc'] as bool?;
    _favGroc = getDataList(snapshotData['Fav_groc']);
    _cartGroc = getDataList(snapshotData['cart_groc']);
    _countGroc = castToType<int>(snapshotData['count_groc']);
    _price = castToType<double>(snapshotData['price']);
    _type = snapshotData['type'] as String?;
    _refId = castToType<int>(snapshotData['ref_Id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groceries');

  static Stream<GroceriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroceriesRecord.fromSnapshot(s));

  static Future<GroceriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroceriesRecord.fromSnapshot(s));

  static GroceriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GroceriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroceriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroceriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroceriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroceriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroceriesRecordData({
  String? name,
  String? image,
  String? desc,
  bool? isfavGroc,
  int? countGroc,
  double? price,
  String? type,
  int? refId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'desc': desc,
      'isfav_groc': isfavGroc,
      'count_groc': countGroc,
      'price': price,
      'type': type,
      'ref_Id': refId,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroceriesRecordDocumentEquality implements Equality<GroceriesRecord> {
  const GroceriesRecordDocumentEquality();

  @override
  bool equals(GroceriesRecord? e1, GroceriesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.desc == e2?.desc &&
        e1?.isfavGroc == e2?.isfavGroc &&
        listEquality.equals(e1?.favGroc, e2?.favGroc) &&
        listEquality.equals(e1?.cartGroc, e2?.cartGroc) &&
        e1?.countGroc == e2?.countGroc &&
        e1?.price == e2?.price &&
        e1?.type == e2?.type &&
        e1?.refId == e2?.refId;
  }

  @override
  int hash(GroceriesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.desc,
        e?.isfavGroc,
        e?.favGroc,
        e?.cartGroc,
        e?.countGroc,
        e?.price,
        e?.type,
        e?.refId
      ]);

  @override
  bool isValidKey(Object? o) => o is GroceriesRecord;
}
