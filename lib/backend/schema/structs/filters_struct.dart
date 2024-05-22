// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FiltersStruct extends BaseStruct {
  FiltersStruct({
    String? size,
    String? colour,
    String? weight,
  })  : _size = size,
        _colour = colour,
        _weight = weight;

  // "Size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) => _size = val;
  bool hasSize() => _size != null;

  // "Colour" field.
  String? _colour;
  String get colour => _colour ?? '';
  set colour(String? val) => _colour = val;
  bool hasColour() => _colour != null;

  // "Weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  set weight(String? val) => _weight = val;
  bool hasWeight() => _weight != null;

  static FiltersStruct fromMap(Map<String, dynamic> data) => FiltersStruct(
        size: data['Size'] as String?,
        colour: data['Colour'] as String?,
        weight: data['Weight'] as String?,
      );

  static FiltersStruct? maybeFromMap(dynamic data) =>
      data is Map ? FiltersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Size': _size,
        'Colour': _colour,
        'Weight': _weight,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Size': serializeParam(
          _size,
          ParamType.String,
        ),
        'Colour': serializeParam(
          _colour,
          ParamType.String,
        ),
        'Weight': serializeParam(
          _weight,
          ParamType.String,
        ),
      }.withoutNulls;

  static FiltersStruct fromSerializableMap(Map<String, dynamic> data) =>
      FiltersStruct(
        size: deserializeParam(
          data['Size'],
          ParamType.String,
          false,
        ),
        colour: deserializeParam(
          data['Colour'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['Weight'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FiltersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FiltersStruct &&
        size == other.size &&
        colour == other.colour &&
        weight == other.weight;
  }

  @override
  int get hashCode => const ListEquality().hash([size, colour, weight]);
}

FiltersStruct createFiltersStruct({
  String? size,
  String? colour,
  String? weight,
}) =>
    FiltersStruct(
      size: size,
      colour: colour,
      weight: weight,
    );
