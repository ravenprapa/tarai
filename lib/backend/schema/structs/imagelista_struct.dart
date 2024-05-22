// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagelistaStruct extends BaseStruct {
  ImagelistaStruct({
    String? img,
  }) : _img = img;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  static ImagelistaStruct fromMap(Map<String, dynamic> data) =>
      ImagelistaStruct(
        img: data['img'] as String?,
      );

  static ImagelistaStruct? maybeFromMap(dynamic data) => data is Map
      ? ImagelistaStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static ImagelistaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImagelistaStruct(
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImagelistaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImagelistaStruct && img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([img]);
}

ImagelistaStruct createImagelistaStruct({
  String? img,
}) =>
    ImagelistaStruct(
      img: img,
    );
