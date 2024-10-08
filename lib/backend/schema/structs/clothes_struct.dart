// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ClothesStruct extends FFFirebaseStruct {
  ClothesStruct({
    String? refId,
    String? name,
    String? price,
    String? image,
    String? desc,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _refId = refId,
        _name = name,
        _price = price,
        _image = image,
        _desc = desc,
        super(firestoreUtilData);

  // "ref_id" field.
  String? _refId;
  String get refId => _refId ?? '';
  set refId(String? val) => _refId = val;

  bool hasRefId() => _refId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  static ClothesStruct fromMap(Map<String, dynamic> data) => ClothesStruct(
        refId: data['ref_id'] as String?,
        name: data['name'] as String?,
        price: data['price'] as String?,
        image: data['image'] as String?,
        desc: data['desc'] as String?,
      );

  static ClothesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClothesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ref_id': _refId,
        'name': _name,
        'price': _price,
        'image': _image,
        'desc': _desc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ref_id': serializeParam(
          _refId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClothesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClothesStruct(
        refId: deserializeParam(
          data['ref_id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClothesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClothesStruct &&
        refId == other.refId &&
        name == other.name &&
        price == other.price &&
        image == other.image &&
        desc == other.desc;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([refId, name, price, image, desc]);
}

ClothesStruct createClothesStruct({
  String? refId,
  String? name,
  String? price,
  String? image,
  String? desc,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClothesStruct(
      refId: refId,
      name: name,
      price: price,
      image: image,
      desc: desc,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClothesStruct? updateClothesStruct(
  ClothesStruct? clothes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    clothes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClothesStructData(
  Map<String, dynamic> firestoreData,
  ClothesStruct? clothes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (clothes == null) {
    return;
  }
  if (clothes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && clothes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clothesData = getClothesFirestoreData(clothes, forFieldValue);
  final nestedData = clothesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = clothes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClothesFirestoreData(
  ClothesStruct? clothes, [
  bool forFieldValue = false,
]) {
  if (clothes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(clothes.toMap());

  // Add any Firestore field values
  clothes.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClothesListFirestoreData(
  List<ClothesStruct>? clothess,
) =>
    clothess?.map((e) => getClothesFirestoreData(e, true)).toList() ?? [];
