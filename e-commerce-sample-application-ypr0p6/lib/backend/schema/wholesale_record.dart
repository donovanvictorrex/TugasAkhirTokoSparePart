import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WholesaleRecord extends FirestoreRecord {
  WholesaleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id_kul" field.
  List<int>? _idKul;
  List<int> get idKul => _idKul ?? const [];
  bool hasIdKul() => _idKul != null;

  // "supplier_ref" field.
  String? _supplierRef;
  String get supplierRef => _supplierRef ?? '';
  bool hasSupplierRef() => _supplierRef != null;

  // "Id_barang" field.
  DocumentReference? _idBarang;
  DocumentReference? get idBarang => _idBarang;
  bool hasIdBarang() => _idBarang != null;

  // "Qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  bool hasQty() => _qty != null;

  // "harga" field.
  int? _harga;
  int get harga => _harga ?? 0;
  bool hasHarga() => _harga != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  bool hasTotal() => _total != null;

  void _initializeFields() {
    _idKul = getDataList(snapshotData['Id_kul']);
    _supplierRef = snapshotData['supplier_ref'] as String?;
    _idBarang = snapshotData['Id_barang'] as DocumentReference?;
    _qty = castToType<int>(snapshotData['Qty']);
    _harga = castToType<int>(snapshotData['harga']);
    _total = castToType<int>(snapshotData['total']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wholesale');

  static Stream<WholesaleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WholesaleRecord.fromSnapshot(s));

  static Future<WholesaleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WholesaleRecord.fromSnapshot(s));

  static WholesaleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WholesaleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WholesaleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WholesaleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WholesaleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WholesaleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWholesaleRecordData({
  String? supplierRef,
  DocumentReference? idBarang,
  int? qty,
  int? harga,
  int? total,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'supplier_ref': supplierRef,
      'Id_barang': idBarang,
      'Qty': qty,
      'harga': harga,
      'total': total,
    }.withoutNulls,
  );

  return firestoreData;
}

class WholesaleRecordDocumentEquality implements Equality<WholesaleRecord> {
  const WholesaleRecordDocumentEquality();

  @override
  bool equals(WholesaleRecord? e1, WholesaleRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.idKul, e2?.idKul) &&
        e1?.supplierRef == e2?.supplierRef &&
        e1?.idBarang == e2?.idBarang &&
        e1?.qty == e2?.qty &&
        e1?.harga == e2?.harga &&
        e1?.total == e2?.total;
  }

  @override
  int hash(WholesaleRecord? e) => const ListEquality().hash(
      [e?.idKul, e?.supplierRef, e?.idBarang, e?.qty, e?.harga, e?.total]);

  @override
  bool isValidKey(Object? o) => o is WholesaleRecord;
}
