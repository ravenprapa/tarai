import '../database.dart';

class MenuTable extends SupabaseTable<MenuRow> {
  @override
  String get tableName => 'menu';

  @override
  MenuRow createRow(Map<String, dynamic> data) => MenuRow(data);
}

class MenuRow extends SupabaseDataRow {
  MenuRow(super.data);

  @override
  SupabaseTable get table => MenuTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get storeid => getField<int>('storeid');
  set storeid(int? value) => setField<int>('storeid', value);
}
