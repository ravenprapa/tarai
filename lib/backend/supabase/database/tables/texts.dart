import '../database.dart';

class TextsTable extends SupabaseTable<TextsRow> {
  @override
  String get tableName => 'texts';

  @override
  TextsRow createRow(Map<String, dynamic> data) => TextsRow(data);
}

class TextsRow extends SupabaseDataRow {
  TextsRow(super.data);

  @override
  SupabaseTable get table => TextsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  String? get a1 => getField<String>('a1');
  set a1(String? value) => setField<String>('a1', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  String? get a2 => getField<String>('a2');
  set a2(String? value) => setField<String>('a2', value);

  int? get at2id => getField<int>('at2id');
  set at2id(int? value) => setField<int>('at2id', value);

  List<String> get aa => getListField<String>('aa');
  set aa(List<String>? value) => setListField<String>('aa', value);
}
