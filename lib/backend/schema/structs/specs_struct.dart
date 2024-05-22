// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecsStruct extends BaseStruct {
  SpecsStruct({
    String? type,
    String? description,
  })  : _type = type,
        _description = description;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  static SpecsStruct fromMap(Map<String, dynamic> data) => SpecsStruct(
        type: data['type'] as String?,
        description: data['description'] as String?,
      );

  static SpecsStruct? maybeFromMap(dynamic data) =>
      data is Map ? SpecsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static SpecsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SpecsStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SpecsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SpecsStruct &&
        type == other.type &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([type, description]);
}

SpecsStruct createSpecsStruct({
  String? type,
  String? description,
}) =>
    SpecsStruct(
      type: type,
      description: description,
    );
