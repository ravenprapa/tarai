import 'package:sqflite/sqflite.dart';

/// BEGIN ADD2CART
Future performAdd2cart(
  Database database, {
  int? storeid,
  int? itemid,
  String? item,
  int? qty,
  int? price,
}) {
  final query = '''
INSERT OR IGNORE INTO Cart (storeid, itemid, item, qty, price) VALUES ($storeid, $itemid, '$item', $qty, $price);
 
''';
  return database.rawQuery(query);
}

/// END ADD2CART

/// BEGIN UPDATECART
Future performUpdatecart(
  Database database, {
  int? qty,
  int? itemid,
}) {
  final query = '''
UPDATE Cart
SET  qty = $qty
WHERE itemid = $itemid;

''';
  return database.rawQuery(query);
}

/// END UPDATECART

/// BEGIN ADD2CHATS
Future performAdd2chats(
  Database database, {
  String? a1,
  String? a2,
  String? a2id,
  String? a2img,
  String? type,
  String? lastmsg,
  String? id,
}) {
  final query = '''
INSERT OR IGNORE INTO chats (a1, a2, a2id, a2img, type, lastmsg, id) 
VALUES ('$a1', '$a2', '$a2id', '$a2img', '$type', '$lastmsg', '$id');
''';
  return database.rawQuery(query);
}

/// END ADD2CHATS

/// BEGIN ADDITEMS
Future performAddItems(
  Database database, {
  int? id,
  int? storeid,
  String? name,
  String? category,
  String? type,
  String? sku,
  String? unit,
  int? stock,
  String? location,
  int? cprice,
  int? sprice,
  String? menu,
  DateTime? lastupdate,
  DateTime? lastsync,
  String? filters,
  String? specs,
  String? desc,
  String? imagelist,
  String? grp,
  String? primaryimg,
  String? speclist,
}) {
  final query = '''
INSERT OR REPLACE INTO Items (
    id, storeid, name, category, type, sku, unit, stock, location, cprice, sprice, menu, lastupdate, lastsync, primaryimg, filters, specs, desc, imagelist, grp, speclist
) VALUES (
    $id, $storeid, '$name', '$category', '$type', '$sku', '$unit', $stock, '$location', $cprice, $sprice, '$menu', '$lastupdate', '$lastsync', '$primaryimg', '$filters', '$specs', '$desc', '$imagelist', '$grp', '$speclist'
);
''';
  return database.rawQuery(query);
}

/// END ADDITEMS
