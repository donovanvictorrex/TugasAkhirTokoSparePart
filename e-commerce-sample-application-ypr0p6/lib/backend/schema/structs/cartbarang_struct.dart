// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartbarangStruct extends FFFirebaseStruct {
  CartbarangStruct({
    String? name,
    int? harga,
    String? image,
    int? qty,
    int? subtotal,
    String? desc,
    String? category,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _harga = harga,
        _image = image,
        _qty = qty,
        _subtotal = subtotal,
        _desc = desc,
        _category = category,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "harga" field.
  int? _harga;
  int get harga => _harga ?? 0;
  set harga(int? val) => _harga = val;

  void incrementHarga(int amount) => harga = harga + amount;

  bool hasHarga() => _harga != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  set qty(int? val) => _qty = val;

  void incrementQty(int amount) => qty = qty + amount;

  bool hasQty() => _qty != null;

  // "subtotal" field.
  int? _subtotal;
  int get subtotal => _subtotal ?? 0;
  set subtotal(int? val) => _subtotal = val;

  void incrementSubtotal(int amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  static CartbarangStruct fromMap(Map<String, dynamic> data) =>
      CartbarangStruct(
        name: data['name'] as String?,
        harga: castToType<int>(data['harga']),
        image: data['image'] as String?,
        qty: castToType<int>(data['qty']),
        subtotal: castToType<int>(data['subtotal']),
        desc: data['desc'] as String?,
        category: data['category'] as String?,
      );

  static CartbarangStruct? maybeFromMap(dynamic data) => data is Map
      ? CartbarangStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'harga': _harga,
        'image': _image,
        'qty': _qty,
        'subtotal': _subtotal,
        'desc': _desc,
        'category': _category,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'harga': serializeParam(
          _harga,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.int,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartbarangStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartbarangStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        harga: deserializeParam(
          data['harga'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.int,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartbarangStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartbarangStruct &&
        name == other.name &&
        harga == other.harga &&
        image == other.image &&
        qty == other.qty &&
        subtotal == other.subtotal &&
        desc == other.desc &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, harga, image, qty, subtotal, desc, category]);
}

CartbarangStruct createCartbarangStruct({
  String? name,
  int? harga,
  String? image,
  int? qty,
  int? subtotal,
  String? desc,
  String? category,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartbarangStruct(
      name: name,
      harga: harga,
      image: image,
      qty: qty,
      subtotal: subtotal,
      desc: desc,
      category: category,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartbarangStruct? updateCartbarangStruct(
  CartbarangStruct? cartbarang, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartbarang
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartbarangStructData(
  Map<String, dynamic> firestoreData,
  CartbarangStruct? cartbarang,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartbarang == null) {
    return;
  }
  if (cartbarang.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartbarang.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartbarangData = getCartbarangFirestoreData(cartbarang, forFieldValue);
  final nestedData = cartbarangData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartbarang.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartbarangFirestoreData(
  CartbarangStruct? cartbarang, [
  bool forFieldValue = false,
]) {
  if (cartbarang == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartbarang.toMap());

  // Add any Firestore field values
  mapToFirestore(cartbarang.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartbarangListFirestoreData(
  List<CartbarangStruct>? cartbarangs,
) =>
    cartbarangs?.map((e) => getCartbarangFirestoreData(e, true)).toList() ?? [];
