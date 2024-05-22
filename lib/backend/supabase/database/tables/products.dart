import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(super.data);

  @override
  SupabaseTable get table => ProductsTable();

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

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get material => getField<String>('material');
  set material(String? value) => setField<String>('material', value);

  String? get weight => getField<String>('weight');
  set weight(String? value) => setField<String>('weight', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get cprice => getField<int>('cprice');
  set cprice(int? value) => setField<int>('cprice', value);

  int? get sprice => getField<int>('sprice');
  set sprice(int? value) => setField<int>('sprice', value);

  String? get menu => getField<String>('menu');
  set menu(String? value) => setField<String>('menu', value);

  DateTime? get lastUpdate => getField<DateTime>('LastUpdate');
  set lastUpdate(DateTime? value) => setField<DateTime>('LastUpdate', value);

  DateTime? get lastSync => getField<DateTime>('LastSync');
  set lastSync(DateTime? value) => setField<DateTime>('LastSync', value);

  String? get primaryimg => getField<String>('primaryimg');
  set primaryimg(String? value) => setField<String>('primaryimg', value);

  String? get sell => getField<String>('sell');
  set sell(String? value) => setField<String>('sell', value);

  dynamic get filters => getField<dynamic>('filters');
  set filters(dynamic value) => setField<dynamic>('filters', value);

  dynamic get specs => getField<dynamic>('specs');
  set specs(dynamic value) => setField<dynamic>('specs', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  List<String> get imagelist => getListField<String>('imagelist');
  set imagelist(List<String>? value) =>
      setListField<String>('imagelist', value);

  String? get selltype => getField<String>('selltype');
  set selltype(String? value) => setField<String>('selltype', value);

  String? get group => getField<String>('group');
  set group(String? value) => setField<String>('group', value);
}
