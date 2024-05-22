// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartStruct extends BaseStruct {
  CartStruct({
    String? product,
    int? qty,
    int? price,
  })  : _product = product,
        _qty = qty,
        _price = price;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  set product(String? val) => _product = val;
  bool hasProduct() => _product != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  set qty(int? val) => _qty = val;
  void incrementQty(int amount) => _qty = qty + amount;
  bool hasQty() => _qty != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static CartStruct fromMap(Map<String, dynamic> data) => CartStruct(
        product: data['product'] as String?,
        qty: castToType<int>(data['qty']),
        price: castToType<int>(data['price']),
      );

  static CartStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'product': _product,
        'qty': _qty,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product': serializeParam(
          _product,
          ParamType.String,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartStruct(
        product: deserializeParam(
          data['product'],
          ParamType.String,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartStruct &&
        product == other.product &&
        qty == other.qty &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([product, qty, price]);
}

CartStruct createCartStruct({
  String? product,
  int? qty,
  int? price,
}) =>
    CartStruct(
      product: product,
      qty: qty,
      price: price,
    );
