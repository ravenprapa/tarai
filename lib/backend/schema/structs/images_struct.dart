// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagesStruct extends BaseStruct {
  ImagesStruct({
    String? title,
    String? type,
    String? url,
  })  : _title = title,
        _type = type,
        _url = url;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  static ImagesStruct fromMap(Map<String, dynamic> data) => ImagesStruct(
        title: data['title'] as String?,
        type: data['type'] as String?,
        url: data['url'] as String?,
      );

  static ImagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'type': _type,
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImagesStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImagesStruct &&
        title == other.title &&
        type == other.type &&
        url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([title, type, url]);
}

ImagesStruct createImagesStruct({
  String? title,
  String? type,
  String? url,
}) =>
    ImagesStruct(
      title: title,
      type: type,
      url: url,
    );
