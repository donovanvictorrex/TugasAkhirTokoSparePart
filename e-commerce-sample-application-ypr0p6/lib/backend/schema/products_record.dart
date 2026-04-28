import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "seller_ref" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "qty" field.
  String? _qty;
  String get qty => _qty ?? '';
  bool hasQty() => _qty != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "panjang" field.
  int? _panjang;
  int get panjang => _panjang ?? 0;
  bool hasPanjang() => _panjang != null;

  // "lebar" field.
  int? _lebar;
  int get lebar => _lebar ?? 0;
  bool hasLebar() => _lebar != null;

  // "tinggi" field.
  int? _tinggi;
  int get tinggi => _tinggi ?? 0;
  bool hasTinggi() => _tinggi != null;

  // "berat" field.
  int? _berat;
  int get berat => _berat ?? 0;
  bool hasBerat() => _berat != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _sellerRef = snapshotData['seller_ref'] as DocumentReference?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _qty = snapshotData['qty'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _category = snapshotData['category'] as String?;
    _panjang = castToType<int>(snapshotData['panjang']);
    _lebar = castToType<int>(snapshotData['lebar']);
    _tinggi = castToType<int>(snapshotData['tinggi']);
    _berat = castToType<int>(snapshotData['berat']);
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
  String? name,
  String? description,
  DateTime? createdAt,
  DocumentReference? sellerRef,
  String? photoUrl,
  DocumentReference? userRef,
  String? qty,
  int? price,
  String? category,
  int? panjang,
  int? lebar,
  int? tinggi,
  int? berat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'created_at': createdAt,
      'seller_ref': sellerRef,
      'photo_url': photoUrl,
      'userRef': userRef,
      'qty': qty,
      'price': price,
      'category': category,
      'panjang': panjang,
      'lebar': lebar,
      'tinggi': tinggi,
      'berat': berat,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.sellerRef == e2?.sellerRef &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.userRef == e2?.userRef &&
        e1?.qty == e2?.qty &&
        e1?.price == e2?.price &&
        e1?.category == e2?.category &&
        e1?.panjang == e2?.panjang &&
        e1?.lebar == e2?.lebar &&
        e1?.tinggi == e2?.tinggi &&
        e1?.berat == e2?.berat;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.createdAt,
        e?.sellerRef,
        e?.photoUrl,
        e?.userRef,
        e?.qty,
        e?.price,
        e?.category,
        e?.panjang,
        e?.lebar,
        e?.tinggi,
        e?.berat
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
