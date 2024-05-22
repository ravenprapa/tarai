import '../database.dart';

class PCompTable extends SupabaseTable<PCompRow> {
  @override
  String get tableName => 'p.comp';

  @override
  PCompRow createRow(Map<String, dynamic> data) => PCompRow(data);
}

class PCompRow extends SupabaseDataRow {
  PCompRow(super.data);

  @override
  SupabaseTable get table => PCompTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get product => getField<String>('product');
  set product(String? value) => setField<String>('product', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  int? get storeid => getField<int>('storeid');
  set storeid(int? value) => setField<int>('storeid', value);

  String? get item => getField<String>('item');
  set item(String? value) => setField<String>('item', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);
}
