import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'items1_widget.dart' show Items1Widget;
import 'package:flutter/material.dart';

class Items1Model extends FlutterFlowModel<Items1Widget> {
  ///  Local state fields for this page.

  String? item;

  int? cacheref;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  ItemsRow? newitem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
