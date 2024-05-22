import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  int? type = 0;

  String? name;

  dynamic specpage;

  List<SpecsStruct> specifications = [];
  void addToSpecifications(SpecsStruct item) => specifications.add(item);
  void removeFromSpecifications(SpecsStruct item) =>
      specifications.remove(item);
  void removeAtIndexFromSpecifications(int index) =>
      specifications.removeAt(index);
  void insertAtIndexInSpecifications(int index, SpecsStruct item) =>
      specifications.insert(index, item);
  void updateSpecificationsAtIndex(int index, Function(SpecsStruct) updateFn) =>
      specifications[index] = updateFn(specifications[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
