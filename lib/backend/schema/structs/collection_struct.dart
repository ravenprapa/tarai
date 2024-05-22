// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollectionStruct extends BaseStruct {
  CollectionStruct({
    String? title,
    String? id,
    String? createdtime,
  })  : _title = title,
        _id = id,
        _createdtime = createdtime;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "createdtime" field.
  String? _createdtime;
  String get createdtime => _createdtime ?? '';
  set createdtime(String? val) => _createdtime = val;
  bool hasCreatedtime() => _createdtime != null;

  static CollectionStruct fromMap(Map<String, dynamic> data) =>
      CollectionStruct(
        title: data['title'] as String?,
        id: data['id'] as String?,
        createdtime: data['createdtime'] as String?,
      );

  static CollectionStruct? maybeFromMap(dynamic data) => data is Map
      ? CollectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'id': _id,
        'createdtime': _createdtime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'createdtime': serializeParam(
          _createdtime,
          ParamType.String,
        ),
      }.withoutNulls;

  static CollectionStruct fromSerializableMap(Map<String, dynamic> data) =>
      CollectionStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdtime: deserializeParam(
          data['createdtime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CollectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CollectionStruct &&
        title == other.title &&
        id == other.id &&
        createdtime == other.createdtime;
  }

  @override
  int get hashCode => const ListEquality().hash([title, id, createdtime]);
}

CollectionStruct createCollectionStruct({
  String? title,
  String? id,
  String? createdtime,
}) =>
    CollectionStruct(
      title: title,
      id: id,
      createdtime: createdtime,
    );
