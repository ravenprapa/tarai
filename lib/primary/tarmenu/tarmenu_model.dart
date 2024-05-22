import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tarmenu_widget.dart' show TarmenuWidget;
import 'package:flutter/material.dart';

class TarmenuModel extends FlutterFlowModel<TarmenuWidget> {
  ///  Local state fields for this page.

  int? items;

  int? totalitems;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ItemsRow>? syncitems;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
