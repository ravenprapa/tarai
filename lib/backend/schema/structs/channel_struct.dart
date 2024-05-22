// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChannelStruct extends BaseStruct {
  ChannelStruct({
    String? cg,
    String? channel,
    int? no,
    String? icon,
  })  : _cg = cg,
        _channel = channel,
        _no = no,
        _icon = icon;

  // "cg" field.
  String? _cg;
  String get cg => _cg ?? '';
  set cg(String? val) => _cg = val;
  bool hasCg() => _cg != null;

  // "channel" field.
  String? _channel;
  String get channel => _channel ?? '';
  set channel(String? val) => _channel = val;
  bool hasChannel() => _channel != null;

  // "no" field.
  int? _no;
  int get no => _no ?? 0;
  set no(int? val) => _no = val;
  void incrementNo(int amount) => _no = no + amount;
  bool hasNo() => _no != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;
  bool hasIcon() => _icon != null;

  static ChannelStruct fromMap(Map<String, dynamic> data) => ChannelStruct(
        cg: data['cg'] as String?,
        channel: data['channel'] as String?,
        no: castToType<int>(data['no']),
        icon: data['icon'] as String?,
      );

  static ChannelStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChannelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cg': _cg,
        'channel': _channel,
        'no': _no,
        'icon': _icon,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cg': serializeParam(
          _cg,
          ParamType.String,
        ),
        'channel': serializeParam(
          _channel,
          ParamType.String,
        ),
        'no': serializeParam(
          _no,
          ParamType.int,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChannelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChannelStruct(
        cg: deserializeParam(
          data['cg'],
          ParamType.String,
          false,
        ),
        channel: deserializeParam(
          data['channel'],
          ParamType.String,
          false,
        ),
        no: deserializeParam(
          data['no'],
          ParamType.int,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChannelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChannelStruct &&
        cg == other.cg &&
        channel == other.channel &&
        no == other.no &&
        icon == other.icon;
  }

  @override
  int get hashCode => const ListEquality().hash([cg, channel, no, icon]);
}

ChannelStruct createChannelStruct({
  String? cg,
  String? channel,
  int? no,
  String? icon,
}) =>
    ChannelStruct(
      cg: cg,
      channel: channel,
      no: no,
      icon: icon,
    );
