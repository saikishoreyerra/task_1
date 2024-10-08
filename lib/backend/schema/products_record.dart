import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "cart" field.
  DocumentReference? _cart;
  DocumentReference? get cart => _cart;
  bool hasCart() => _cart != null;

  // "Favv" field.
  List<DocumentReference>? _favv;
  List<DocumentReference> get favv => _favv ?? const [];
  bool hasFavv() => _favv != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _productName = snapshotData['product_name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _categoryName = snapshotData['category_name'] as String?;
    _quantity = snapshotData['quantity'] as String?;
    _cart = snapshotData['cart'] as DocumentReference?;
    _favv = getDataList(snapshotData['Favv']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? id,
  String? productName,
  double? price,
  String? categoryName,
  String? quantity,
  DocumentReference? cart,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'product_name': productName,
      'price': price,
      'category_name': categoryName,
      'quantity': quantity,
      'cart': cart,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.productName == e2?.productName &&
        e1?.price == e2?.price &&
        e1?.categoryName == e2?.categoryName &&
        e1?.quantity == e2?.quantity &&
        e1?.cart == e2?.cart &&
        listEquality.equals(e1?.favv, e2?.favv);
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.productName,
        e?.price,
        e?.categoryName,
        e?.quantity,
        e?.cart,
        e?.favv
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
