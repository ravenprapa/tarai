import '/flutter_flow/flutter_flow_util.dart';
import 'addstock_widget.dart' show AddstockWidget;
import 'package:flutter/material.dart';

class AddstockModel extends FlutterFlowModel<AddstockWidget> {
  ///  Local state fields for this page.

  int? initqty;

  int? add = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
