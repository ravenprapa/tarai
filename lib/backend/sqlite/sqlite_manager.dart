import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'tarbase',
      'tarapp.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetcartitemRow>> getcartitem({
    int? itemid,
  }) =>
      performGetcartitem(
        _database,
        itemid: itemid,
      );

  Future<List<GetCartRow>> getCart() => performGetCart(
        _database,
      );

  Future<List<GetChatsRow>> getChats() => performGetChats(
        _database,
      );

  Future<List<GetItemsRow>> getItems() => performGetItems(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future add2cart({
    int? storeid,
    int? itemid,
    String? item,
    int? qty,
    int? price,
  }) =>
      performAdd2cart(
        _database,
        storeid: storeid,
        itemid: itemid,
        item: item,
        qty: qty,
        price: price,
      );

  Future updatecart({
    int? qty,
    int? itemid,
  }) =>
      performUpdatecart(
        _database,
        qty: qty,
        itemid: itemid,
      );

  Future add2chats({
    String? a1,
    String? a2,
    String? a2id,
    String? a2img,
    String? type,
    String? lastmsg,
    String? id,
  }) =>
      performAdd2chats(
        _database,
        a1: a1,
        a2: a2,
        a2id: a2id,
        a2img: a2img,
        type: type,
        lastmsg: lastmsg,
        id: id,
      );

  Future addItems({
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
  }) =>
      performAddItems(
        _database,
        id: id,
        storeid: storeid,
        name: name,
        category: category,
        type: type,
        sku: sku,
        unit: unit,
        stock: stock,
        location: location,
        cprice: cprice,
        sprice: sprice,
        menu: menu,
        lastupdate: lastupdate,
        lastsync: lastsync,
        filters: filters,
        specs: specs,
        desc: desc,
        imagelist: imagelist,
        grp: grp,
        primaryimg: primaryimg,
        speclist: speclist,
      );

  /// END UPDATE QUERY CALLS
}
