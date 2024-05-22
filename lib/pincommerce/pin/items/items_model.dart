import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'items_widget.dart' show ItemsWidget;
import 'package:flutter/material.dart';

class ItemsModel extends FlutterFlowModel<ItemsWidget> {
  ///  Local state fields for this page.

  String? item;

  int? cacheref;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ItemsRow>();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  var code = '';
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  ItemsRow? newitem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
  }
}
