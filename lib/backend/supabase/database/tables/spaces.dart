import '../database.dart';

class SpacesTable extends SupabaseTable<SpacesRow> {
  @override
  String get tableName => 'spaces';

  @override
  SpacesRow createRow(Map<String, dynamic> data) => SpacesRow(data);
}

class SpacesRow extends SupabaseDataRow {
  SpacesRow(super.data);

  @override
  SupabaseTable get table => SpacesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  dynamic get channels => getField<dynamic>('channels');
  set channels(dynamic value) => setField<dynamic>('channels', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
