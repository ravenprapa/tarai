import '/flutter_flow/flutter_flow_util.dart';
import 'an_widget.dart' show AnWidget;
import 'package:flutter/material.dart';

class AnModel extends FlutterFlowModel<AnWidget> {
  ///  Local state fields for this page.

  int? view = 0;

  String? type;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
