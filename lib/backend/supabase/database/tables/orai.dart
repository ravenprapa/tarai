import '../database.dart';

class OraiTable extends SupabaseTable<OraiRow> {
  @override
  String get tableName => 'orai';

  @override
  OraiRow createRow(Map<String, dynamic> data) => OraiRow(data);
}

class OraiRow extends SupabaseDataRow {
  OraiRow(super.data);

  @override
  SupabaseTable get table => OraiTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
