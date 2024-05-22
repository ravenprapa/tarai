import '../database.dart';

class ParTable extends SupabaseTable<ParRow> {
  @override
  String get tableName => 'par';

  @override
  ParRow createRow(Map<String, dynamic> data) => ParRow(data);
}

class ParRow extends SupabaseDataRow {
  ParRow(super.data);

  @override
  SupabaseTable get table => ParTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get plan => getField<String>('plan');
  set plan(String? value) => setField<String>('plan', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get assets => getField<int>('assets');
  set assets(int? value) => setField<int>('assets', value);

  int? get pages => getField<int>('pages');
  set pages(int? value) => setField<int>('pages', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  String? get accesstoken => getField<String>('accesstoken');
  set accesstoken(String? value) => setField<String>('accesstoken', value);

  String? get templateid => getField<String>('templateid');
  set templateid(String? value) => setField<String>('templateid', value);

  dynamic get notionint => getField<dynamic>('notionint');
  set notionint(dynamic value) => setField<dynamic>('notionint', value);

  String? get lastcrtdt => getField<String>('lastcrtdt');
  set lastcrtdt(String? value) => setField<String>('lastcrtdt', value);

  int? get noofitems => getField<int>('noofitems');
  set noofitems(int? value) => setField<int>('noofitems', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get analytics => getField<String>('analytics');
  set analytics(String? value) => setField<String>('analytics', value);
}
