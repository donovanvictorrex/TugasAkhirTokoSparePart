// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoleStruct extends FFFirebaseStruct {
  RoleStruct({
    String? users,
    String? admin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _users = users,
        _admin = admin,
        super(firestoreUtilData);

  // "users" field.
  String? _users;
  String get users => _users ?? '';
  set users(String? val) => _users = val;

  bool hasUsers() => _users != null;

  // "admin" field.
  String? _admin;
  String get admin => _admin ?? '';
  set admin(String? val) => _admin = val;

  bool hasAdmin() => _admin != null;

  static RoleStruct fromMap(Map<String, dynamic> data) => RoleStruct(
        users: data['users'] as String?,
        admin: data['admin'] as String?,
      );

  static RoleStruct? maybeFromMap(dynamic data) =>
      data is Map ? RoleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'users': _users,
        'admin': _admin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'users': serializeParam(
          _users,
          ParamType.String,
        ),
        'admin': serializeParam(
          _admin,
          ParamType.String,
        ),
      }.withoutNulls;

  static RoleStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoleStruct(
        users: deserializeParam(
          data['users'],
          ParamType.String,
          false,
        ),
        admin: deserializeParam(
          data['admin'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RoleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RoleStruct && users == other.users && admin == other.admin;
  }

  @override
  int get hashCode => const ListEquality().hash([users, admin]);
}

RoleStruct createRoleStruct({
  String? users,
  String? admin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RoleStruct(
      users: users,
      admin: admin,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RoleStruct? updateRoleStruct(
  RoleStruct? role, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    role
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRoleStructData(
  Map<String, dynamic> firestoreData,
  RoleStruct? role,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (role == null) {
    return;
  }
  if (role.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && role.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final roleData = getRoleFirestoreData(role, forFieldValue);
  final nestedData = roleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = role.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRoleFirestoreData(
  RoleStruct? role, [
  bool forFieldValue = false,
]) {
  if (role == null) {
    return {};
  }
  final firestoreData = mapToFirestore(role.toMap());

  // Add any Firestore field values
  mapToFirestore(role.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRoleListFirestoreData(
  List<RoleStruct>? roles,
) =>
    roles?.map((e) => getRoleFirestoreData(e, true)).toList() ?? [];
