import '../database.dart';

class ATable extends SupabaseTable<ARow> {
  @override
  String get tableName => 'a';

  @override
  ARow createRow(Map<String, dynamic> data) => ARow(data);
}

class ARow extends SupabaseDataRow {
  ARow(super.data);

  @override
  SupabaseTable get table => ATable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get about => getField<String>('about');
  set about(String? value) => setField<String>('about', value);

  String? get invoice => getField<String>('invoice');
  set invoice(String? value) => setField<String>('invoice', value);

  String? get subscription => getField<String>('subscription');
  set subscription(String? value) => setField<String>('subscription', value);

  List<String> get works => getListField<String>('works');
  set works(List<String>? value) => setListField<String>('works', value);
}
