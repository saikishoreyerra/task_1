// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PostssStruct extends FFFirebaseStruct {
  PostssStruct({
    DocumentReference? fav,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fav = fav,
        super(firestoreUtilData);

  // "fav" field.
  DocumentReference? _fav;
  DocumentReference? get fav => _fav;
  set fav(DocumentReference? val) => _fav = val;

  bool hasFav() => _fav != null;

  static PostssStruct fromMap(Map<String, dynamic> data) => PostssStruct(
        fav: data['fav'] as DocumentReference?,
      );

  static PostssStruct? maybeFromMap(dynamic data) =>
      data is Map ? PostssStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fav': _fav,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fav': serializeParam(
          _fav,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static PostssStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostssStruct(
        fav: deserializeParam(
          data['fav'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['post'],
        ),
      );

  @override
  String toString() => 'PostssStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostssStruct && fav == other.fav;
  }

  @override
  int get hashCode => const ListEquality().hash([fav]);
}

PostssStruct createPostssStruct({
  DocumentReference? fav,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PostssStruct(
      fav: fav,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PostssStruct? updatePostssStruct(
  PostssStruct? postss, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    postss
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPostssStructData(
  Map<String, dynamic> firestoreData,
  PostssStruct? postss,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (postss == null) {
    return;
  }
  if (postss.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && postss.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final postssData = getPostssFirestoreData(postss, forFieldValue);
  final nestedData = postssData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = postss.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPostssFirestoreData(
  PostssStruct? postss, [
  bool forFieldValue = false,
]) {
  if (postss == null) {
    return {};
  }
  final firestoreData = mapToFirestore(postss.toMap());

  // Add any Firestore field values
  postss.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPostssListFirestoreData(
  List<PostssStruct>? postsss,
) =>
    postsss?.map((e) => getPostssFirestoreData(e, true)).toList() ?? [];
