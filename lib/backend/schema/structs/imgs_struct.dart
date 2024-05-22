// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImgsStruct extends BaseStruct {
  ImgsStruct({
    String? img,
  }) : _img = img;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  static ImgsStruct fromMap(Map<String, dynamic> data) => ImgsStruct(
        img: data['img'] as String?,
      );

  static ImgsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImgsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImgsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImgsStruct(
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImgsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImgsStruct && img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([img]);
}

ImgsStruct createImgsStruct({
  String? img,
}) =>
    ImgsStruct(
      img: img,
    );
