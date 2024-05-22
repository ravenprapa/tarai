// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AaStruct extends BaseStruct {
  AaStruct({
    List<String>? aa,
  }) : _aa = aa;

  // "aa" field.
  List<String>? _aa;
  List<String> get aa => _aa ?? const [];
  set aa(List<String>? val) => _aa = val;
  void updateAa(Function(List<String>) updateFn) => updateFn(_aa ??= []);
  bool hasAa() => _aa != null;

  static AaStruct fromMap(Map<String, dynamic> data) => AaStruct(
        aa: getDataList(data['aa']),
      );

  static AaStruct? maybeFromMap(dynamic data) =>
      data is Map ? AaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'aa': _aa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'aa': serializeParam(
          _aa,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static AaStruct fromSerializableMap(Map<String, dynamic> data) => AaStruct(
        aa: deserializeParam<String>(
          data['aa'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AaStruct && listEquality.equals(aa, other.aa);
  }

  @override
  int get hashCode => const ListEquality().hash([aa]);
}

AaStruct createAaStruct() => AaStruct();
