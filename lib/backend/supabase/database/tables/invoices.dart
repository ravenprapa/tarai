import '../database.dart';

class InvoicesTable extends SupabaseTable<InvoicesRow> {
  @override
  String get tableName => 'invoices';

  @override
  InvoicesRow createRow(Map<String, dynamic> data) => InvoicesRow(data);
}

class InvoicesRow extends SupabaseDataRow {
  InvoicesRow(super.data);

  @override
  SupabaseTable get table => InvoicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get value => getField<int>('value');
  set value(int? value) => setField<int>('value', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);
}
