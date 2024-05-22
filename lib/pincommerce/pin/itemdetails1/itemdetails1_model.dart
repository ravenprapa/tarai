import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'itemdetails1_widget.dart' show Itemdetails1Widget;
import 'package:flutter/material.dart';

class Itemdetails1Model extends FlutterFlowModel<Itemdetails1Widget> {
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
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
