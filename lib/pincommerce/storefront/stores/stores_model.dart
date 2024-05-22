import '/flutter_flow/flutter_flow_util.dart';
import 'stores_widget.dart' show StoresWidget;
import 'package:flutter/material.dart';

class StoresModel extends FlutterFlowModel<StoresWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
