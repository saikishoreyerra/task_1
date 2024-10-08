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

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "isFav_watch" field.
  bool? _isFavWatch;
  bool get isFavWatch => _isFavWatch ?? false;
  bool hasIsFavWatch() => _isFavWatch != null;

  // "Fav_watch" field.
  List<DocumentReference>? _favWatch;
  List<DocumentReference> get favWatch => _favWatch ?? const [];
  bool hasFavWatch() => _favWatch != null;

  // "cart_watch" field.
  List<bool>? _cartWatch;
  List<bool> get cartWatch => _cartWatch ?? const [];
  bool hasCartWatch() => _cartWatch != null;

  // "count_watch" field.
  int? _countWatch;
  int get countWatch => _countWatch ?? 0;
  bool hasCountWatch() => _countWatch != null;

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
    _isFavWatch = snapshotData['isFav_watch'] as bool?;
    _favWatch = getDataList(snapshotData['Fav_watch']);
    _cartWatch = getDataList(snapshotData['cart_watch']);
    _countWatch = castToType<int>(snapshotData['count_watch']);
    _price = castToType<double>(snapshotData['price']);
    _type = snapshotData['type'] as String?;
    _refId = castToType<int>(snapshotData['ref_Id']);
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
  String? desc,
  bool? isFavWatch,
  int? countWatch,
  double? price,
  String? type,
  int? refId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'desc': desc,
      'isFav_watch': isFavWatch,
      'count_watch': countWatch,
      'price': price,
      'type': type,
      'ref_Id': refId,
    }.withoutNulls,
  );

  return firestoreData;
}

class WatchesRecordDocumentEquality implements Equality<WatchesRecord> {
  const WatchesRecordDocumentEquality();

  @override
  bool equals(WatchesRecord? e1, WatchesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.desc == e2?.desc &&
        e1?.isFavWatch == e2?.isFavWatch &&
        listEquality.equals(e1?.favWatch, e2?.favWatch) &&
        listEquality.equals(e1?.cartWatch, e2?.cartWatch) &&
        e1?.countWatch == e2?.countWatch &&
        e1?.price == e2?.price &&
        e1?.type == e2?.type &&
        e1?.refId == e2?.refId;
  }

  @override
  int hash(WatchesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.desc,
        e?.isFavWatch,
        e?.favWatch,
        e?.cartWatch,
        e?.countWatch,
        e?.price,
        e?.type,
        e?.refId
      ]);

  @override
  bool isValidKey(Object? o) => o is WatchesRecord;
}
