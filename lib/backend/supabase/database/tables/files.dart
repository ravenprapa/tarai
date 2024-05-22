import '../database.dart';

class FilesTable extends SupabaseTable<FilesRow> {
  @override
  String get tableName => 'files';

  @override
  FilesRow createRow(Map<String, dynamic> data) => FilesRow(data);
}

class FilesRow extends SupabaseDataRow {
  FilesRow(super.data);

  @override
  SupabaseTable get table => FilesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  int? get size => getField<int>('size');
  set size(int? value) => setField<int>('size', value);
}
