// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemStruct extends BaseStruct {
  ItemStruct({
    int? id,
    int? storeid,
    String? name,
    String? category,
    String? type,
    String? sku,
    String? unit,
    int? stock,
    String? size,
    String? material,
    String? weight,
    String? location,
    int? cprice,
    int? sprice,
    String? menu,
    String? lastUpdate,
    String? lastSync,
    String? primaryimg,
    String? sell,
    FiltersStruct? filters,
    String? specs,
    String? desc,
    List<String>? imagelist,
    String? group,
    List<int>? consumption,
    int? cons,
  })  : _id = id,
        _storeid = storeid,
        _name = name,
        _category = category,
        _type = type,
        _sku = sku,
        _unit = unit,
        _stock = stock,
        _size = size,
        _material = material,
        _weight = weight,
        _location = location,
        _cprice = cprice,
        _sprice = sprice,
        _menu = menu,
        _lastUpdate = lastUpdate,
        _lastSync = lastSync,
        _primaryimg = primaryimg,
        _sell = sell,
        _filters = filters,
        _specs = specs,
        _desc = desc,
        _imagelist = imagelist,
        _group = group,
        _consumption = consumption,
        _cons = cons;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "storeid" field.
  int? _storeid;
  int get storeid => _storeid ?? 0;
  set storeid(int? val) => _storeid = val;
  void incrementStoreid(int amount) => _storeid = storeid + amount;
  bool hasStoreid() => _storeid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;
  bool hasSku() => _sku != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;
  bool hasUnit() => _unit != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  set stock(int? val) => _stock = val;
  void incrementStock(int amount) => _stock = stock + amount;
  bool hasStock() => _stock != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) => _size = val;
  bool hasSize() => _size != null;

  // "material" field.
  String? _material;
  String get material => _material ?? '';
  set material(String? val) => _material = val;
  bool hasMaterial() => _material != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  set weight(String? val) => _weight = val;
  bool hasWeight() => _weight != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "cprice" field.
  int? _cprice;
  int get cprice => _cprice ?? 0;
  set cprice(int? val) => _cprice = val;
  void incrementCprice(int amount) => _cprice = cprice + amount;
  bool hasCprice() => _cprice != null;

  // "sprice" field.
  int? _sprice;
  int get sprice => _sprice ?? 0;
  set sprice(int? val) => _sprice = val;
  void incrementSprice(int amount) => _sprice = sprice + amount;
  bool hasSprice() => _sprice != null;

  // "menu" field.
  String? _menu;
  String get menu => _menu ?? '';
  set menu(String? val) => _menu = val;
  bool hasMenu() => _menu != null;

  // "LastUpdate" field.
  String? _lastUpdate;
  String get lastUpdate => _lastUpdate ?? '';
  set lastUpdate(String? val) => _lastUpdate = val;
  bool hasLastUpdate() => _lastUpdate != null;

  // "LastSync" field.
  String? _lastSync;
  String get lastSync => _lastSync ?? '';
  set lastSync(String? val) => _lastSync = val;
  bool hasLastSync() => _lastSync != null;

  // "primaryimg" field.
  String? _primaryimg;
  String get primaryimg => _primaryimg ?? '';
  set primaryimg(String? val) => _primaryimg = val;
  bool hasPrimaryimg() => _primaryimg != null;

  // "sell" field.
  String? _sell;
  String get sell => _sell ?? '';
  set sell(String? val) => _sell = val;
  bool hasSell() => _sell != null;

  // "filters" field.
  FiltersStruct? _filters;
  FiltersStruct get filters => _filters ?? FiltersStruct();
  set filters(FiltersStruct? val) => _filters = val;
  void updateFilters(Function(FiltersStruct) updateFn) =>
      updateFn(_filters ??= FiltersStruct());
  bool hasFilters() => _filters != null;

  // "specs" field.
  String? _specs;
  String get specs => _specs ?? '';
  set specs(String? val) => _specs = val;
  bool hasSpecs() => _specs != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;
  bool hasDesc() => _desc != null;

  // "imagelist" field.
  List<String>? _imagelist;
  List<String> get imagelist => _imagelist ?? const [];
  set imagelist(List<String>? val) => _imagelist = val;
  void updateImagelist(Function(List<String>) updateFn) =>
      updateFn(_imagelist ??= []);
  bool hasImagelist() => _imagelist != null;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  set group(String? val) => _group = val;
  bool hasGroup() => _group != null;

  // "consumption" field.
  List<int>? _consumption;
  List<int> get consumption => _consumption ?? const [];
  set consumption(List<int>? val) => _consumption = val;
  void updateConsumption(Function(List<int>) updateFn) =>
      updateFn(_consumption ??= []);
  bool hasConsumption() => _consumption != null;

  // "cons" field.
  int? _cons;
  int get cons => _cons ?? 0;
  set cons(int? val) => _cons = val;
  void incrementCons(int amount) => _cons = cons + amount;
  bool hasCons() => _cons != null;

  static ItemStruct fromMap(Map<String, dynamic> data) => ItemStruct(
        id: castToType<int>(data['id']),
        storeid: castToType<int>(data['storeid']),
        name: data['name'] as String?,
        category: data['category'] as String?,
        type: data['type'] as String?,
        sku: data['sku'] as String?,
        unit: data['unit'] as String?,
        stock: castToType<int>(data['stock']),
        size: data['size'] as String?,
        material: data['material'] as String?,
        weight: data['weight'] as String?,
        location: data['location'] as String?,
        cprice: castToType<int>(data['cprice']),
        sprice: castToType<int>(data['sprice']),
        menu: data['menu'] as String?,
        lastUpdate: data['LastUpdate'] as String?,
        lastSync: data['LastSync'] as String?,
        primaryimg: data['primaryimg'] as String?,
        sell: data['sell'] as String?,
        filters: FiltersStruct.maybeFromMap(data['filters']),
        specs: data['specs'] as String?,
        desc: data['desc'] as String?,
        imagelist: getDataList(data['imagelist']),
        group: data['group'] as String?,
        consumption: getDataList(data['consumption']),
        cons: castToType<int>(data['cons']),
      );

  static ItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'storeid': _storeid,
        'name': _name,
        'category': _category,
        'type': _type,
        'sku': _sku,
        'unit': _unit,
        'stock': _stock,
        'size': _size,
        'material': _material,
        'weight': _weight,
        'location': _location,
        'cprice': _cprice,
        'sprice': _sprice,
        'menu': _menu,
        'LastUpdate': _lastUpdate,
        'LastSync': _lastSync,
        'primaryimg': _primaryimg,
        'sell': _sell,
        'filters': _filters?.toMap(),
        'specs': _specs,
        'desc': _desc,
        'imagelist': _imagelist,
        'group': _group,
        'consumption': _consumption,
        'cons': _cons,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'storeid': serializeParam(
          _storeid,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'stock': serializeParam(
          _stock,
          ParamType.int,
        ),
        'size': serializeParam(
          _size,
          ParamType.String,
        ),
        'material': serializeParam(
          _material,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'cprice': serializeParam(
          _cprice,
          ParamType.int,
        ),
        'sprice': serializeParam(
          _sprice,
          ParamType.int,
        ),
        'menu': serializeParam(
          _menu,
          ParamType.String,
        ),
        'LastUpdate': serializeParam(
          _lastUpdate,
          ParamType.String,
        ),
        'LastSync': serializeParam(
          _lastSync,
          ParamType.String,
        ),
        'primaryimg': serializeParam(
          _primaryimg,
          ParamType.String,
        ),
        'sell': serializeParam(
          _sell,
          ParamType.String,
        ),
        'filters': serializeParam(
          _filters,
          ParamType.DataStruct,
        ),
        'specs': serializeParam(
          _specs,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'imagelist': serializeParam(
          _imagelist,
          ParamType.String,
          true,
        ),
        'group': serializeParam(
          _group,
          ParamType.String,
        ),
        'consumption': serializeParam(
          _consumption,
          ParamType.int,
          true,
        ),
        'cons': serializeParam(
          _cons,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        storeid: deserializeParam(
          data['storeid'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        stock: deserializeParam(
          data['stock'],
          ParamType.int,
          false,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.String,
          false,
        ),
        material: deserializeParam(
          data['material'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        cprice: deserializeParam(
          data['cprice'],
          ParamType.int,
          false,
        ),
        sprice: deserializeParam(
          data['sprice'],
          ParamType.int,
          false,
        ),
        menu: deserializeParam(
          data['menu'],
          ParamType.String,
          false,
        ),
        lastUpdate: deserializeParam(
          data['LastUpdate'],
          ParamType.String,
          false,
        ),
        lastSync: deserializeParam(
          data['LastSync'],
          ParamType.String,
          false,
        ),
        primaryimg: deserializeParam(
          data['primaryimg'],
          ParamType.String,
          false,
        ),
        sell: deserializeParam(
          data['sell'],
          ParamType.String,
          false,
        ),
        filters: deserializeStructParam(
          data['filters'],
          ParamType.DataStruct,
          false,
          structBuilder: FiltersStruct.fromSerializableMap,
        ),
        specs: deserializeParam(
          data['specs'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        imagelist: deserializeParam<String>(
          data['imagelist'],
          ParamType.String,
          true,
        ),
        group: deserializeParam(
          data['group'],
          ParamType.String,
          false,
        ),
        consumption: deserializeParam<int>(
          data['consumption'],
          ParamType.int,
          true,
        ),
        cons: deserializeParam(
          data['cons'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ItemStruct &&
        id == other.id &&
        storeid == other.storeid &&
        name == other.name &&
        category == other.category &&
        type == other.type &&
        sku == other.sku &&
        unit == other.unit &&
        stock == other.stock &&
        size == other.size &&
        material == other.material &&
        weight == other.weight &&
        location == other.location &&
        cprice == other.cprice &&
        sprice == other.sprice &&
        menu == other.menu &&
        lastUpdate == other.lastUpdate &&
        lastSync == other.lastSync &&
        primaryimg == other.primaryimg &&
        sell == other.sell &&
        filters == other.filters &&
        specs == other.specs &&
        desc == other.desc &&
        listEquality.equals(imagelist, other.imagelist) &&
        group == other.group &&
        listEquality.equals(consumption, other.consumption) &&
        cons == other.cons;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        storeid,
        name,
        category,
        type,
        sku,
        unit,
        stock,
        size,
        material,
        weight,
        location,
        cprice,
        sprice,
        menu,
        lastUpdate,
        lastSync,
        primaryimg,
        sell,
        filters,
        specs,
        desc,
        imagelist,
        group,
        consumption,
        cons
      ]);
}

ItemStruct createItemStruct({
  int? id,
  int? storeid,
  String? name,
  String? category,
  String? type,
  String? sku,
  String? unit,
  int? stock,
  String? size,
  String? material,
  String? weight,
  String? location,
  int? cprice,
  int? sprice,
  String? menu,
  String? lastUpdate,
  String? lastSync,
  String? primaryimg,
  String? sell,
  FiltersStruct? filters,
  String? specs,
  String? desc,
  String? group,
  int? cons,
}) =>
    ItemStruct(
      id: id,
      storeid: storeid,
      name: name,
      category: category,
      type: type,
      sku: sku,
      unit: unit,
      stock: stock,
      size: size,
      material: material,
      weight: weight,
      location: location,
      cprice: cprice,
      sprice: sprice,
      menu: menu,
      lastUpdate: lastUpdate,
      lastSync: lastSync,
      primaryimg: primaryimg,
      sell: sell,
      filters: filters ?? FiltersStruct(),
      specs: specs,
      desc: desc,
      group: group,
      cons: cons,
    );
