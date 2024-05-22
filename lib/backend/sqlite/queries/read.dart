import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETCARTITEM
Future<List<GetcartitemRow>> performGetcartitem(
  Database database, {
  int? itemid,
}) {
  final query = '''
SELECT * FROM Cart WHERE itemid = $itemid;
''';
  return _readQuery(database, query, (d) => GetcartitemRow(d));
}

class GetcartitemRow extends SqliteRow {
  GetcartitemRow(super.data);

  int? get qty => data['qty'] as int?;
  int? get price => data['price'] as int?;
  int? get total => data['total'] as int?;
}

/// END GETCARTITEM

/// BEGIN GETCART
Future<List<GetCartRow>> performGetCart(
  Database database,
) {
  const query = '''
SELECT * FROM Cart
''';
  return _readQuery(database, query, (d) => GetCartRow(d));
}

class GetCartRow extends SqliteRow {
  GetCartRow(super.data);

  int? get qty => data['qty'] as int?;
  int? get price => data['price'] as int?;
  int? get total => data['total'] as int?;
  String get item => data['item'] as String;
}

/// END GETCART

/// BEGIN GETCHATS
Future<List<GetChatsRow>> performGetChats(
  Database database,
) {
  const query = '''
SELECT * FROM chats
''';
  return _readQuery(database, query, (d) => GetChatsRow(d));
}

class GetChatsRow extends SqliteRow {
  GetChatsRow(super.data);

  String get a1 => data['a1'] as String;
  String get a2 => data['a2'] as String;
  String get a2id => data['a2id'] as String;
  String get a2img => data['a2img'] as String;
  String get type => data['type'] as String;
  String get lastmsg => data['lastmsg'] as String;
}

/// END GETCHATS

/// BEGIN GETITEMS
Future<List<GetItemsRow>> performGetItems(
  Database database,
) {
  const query = '''
SELECT * FROM Items
''';
  return _readQuery(database, query, (d) => GetItemsRow(d));
}

class GetItemsRow extends SqliteRow {
  GetItemsRow(super.data);

  int get id => data['id'] as int;
  String? get storeid => data['storeid'] as String?;
  String? get name => data['name'] as String?;
  String? get category => data['category'] as String?;
  String? get type => data['type'] as String?;
  String? get sku => data['sku'] as String?;
  String? get unit => data['unit'] as String?;
  int? get stock => data['stock'] as int?;
  String? get location => data['location'] as String?;
  int? get cprice => data['cprice'] as int?;
  int? get sprice => data['sprice'] as int?;
  String? get menu => data['menu'] as String?;
  DateTime? get lastupdate => data['lastupdate'] as DateTime?;
  DateTime? get lastsync => data['lastsync'] as DateTime?;
  String? get primaryimg => data['primaryimg'] as String?;
  dynamic get filters => data['filters'] as dynamic;
  dynamic get specs => data['specs'] as dynamic;
  String? get description => data['description'] as String?;
  dynamic get imagelist => data['imagelist'] as dynamic;
  String? get grp => data['grp'] as String?;
  dynamic get speclist => data['speclist'] as dynamic;
}

/// END GETITEMS
