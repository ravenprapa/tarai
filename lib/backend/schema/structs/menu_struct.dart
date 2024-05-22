// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuStruct extends BaseStruct {
  MenuStruct({
    String? name,
    int? index,
  })  : _name = name,
        _index = index;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;
  void incrementIndex(int amount) => _index = index + amount;
  bool hasIndex() => _index != null;

  static MenuStruct fromMap(Map<String, dynamic> data) => MenuStruct(
        name: data['name'] as String?,
        index: castToType<int>(data['index']),
      );

  static MenuStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static MenuStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MenuStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MenuStruct && name == other.name && index == other.index;
  }

  @override
  int get hashCode => const ListEquality().hash([name, index]);
}

MenuStruct createMenuStruct({
  String? name,
  int? index,
}) =>
    MenuStruct(
      name: name,
      index: index,
    );
