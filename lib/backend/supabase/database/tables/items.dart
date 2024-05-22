import '../database.dart';

class ItemsTable extends SupabaseTable<ItemsRow> {
  @override
  String get tableName => 'items';

  @override
  ItemsRow createRow(Map<String, dynamic> data) => ItemsRow(data);
}

class ItemsRow extends SupabaseDataRow {
  ItemsRow(super.data);

  @override
  SupabaseTable get table => ItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get storeid => getField<int>('storeid');
  set storeid(int? value) => setField<int>('storeid', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  int? get stock => getField<int>('stock');
  set stock(int? value) => setField<int>('stock', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get cprice => getField<int>('cprice');
  set cprice(int? value) => setField<int>('cprice', value);

  int? get sprice => getField<int>('sprice');
  set sprice(int? value) => setField<int>('sprice', value);

  String? get menu => getField<String>('menu');
  set menu(String? value) => setField<String>('menu', value);

  DateTime? get lastupdate => getField<DateTime>('lastupdate');
  set lastupdate(DateTime? value) => setField<DateTime>('lastupdate', value);

  DateTime? get lastsync => getField<DateTime>('lastsync');
  set lastsync(DateTime? value) => setField<DateTime>('lastsync', value);

  String? get primaryimg => getField<String>('primaryimg');
  set primaryimg(String? value) => setField<String>('primaryimg', value);

  dynamic get filters => getField<dynamic>('filters');
  set filters(dynamic value) => setField<dynamic>('filters', value);

  dynamic get specs => getField<dynamic>('specs');
  set specs(dynamic value) => setField<dynamic>('specs', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get grp => getField<String>('grp');
  set grp(String? value) => setField<String>('grp', value);

  dynamic get imagelist => getField<dynamic>('imagelist');
  set imagelist(dynamic value) => setField<dynamic>('imagelist', value);

  List<dynamic> get speclist => getListField<dynamic>('speclist');
  set speclist(List<dynamic>? value) =>
      setListField<dynamic>('speclist', value);

  dynamic get speclist2 => getField<dynamic>('speclist2');
  set speclist2(dynamic value) => setField<dynamic>('speclist2', value);

  String? get speclist3 => getField<String>('speclist3');
  set speclist3(String? value) => setField<String>('speclist3', value);
}
