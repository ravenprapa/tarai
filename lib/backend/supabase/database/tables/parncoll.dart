import '../database.dart';

class ParncollTable extends SupabaseTable<ParncollRow> {
  @override
  String get tableName => 'parncoll';

  @override
  ParncollRow createRow(Map<String, dynamic> data) => ParncollRow(data);
}

class ParncollRow extends SupabaseDataRow {
  ParncollRow(super.data);

  @override
  SupabaseTable get table => ParncollTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get createdtime => getField<String>('createdtime');
  set createdtime(String? value) => setField<String>('createdtime', value);

  String? get collid => getField<String>('collid');
  set collid(String? value) => setField<String>('collid', value);

  String? get databaseid => getField<String>('databaseid');
  set databaseid(String? value) => setField<String>('databaseid', value);
}
