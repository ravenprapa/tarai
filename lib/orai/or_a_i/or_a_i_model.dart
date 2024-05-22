import '/flutter_flow/flutter_flow_util.dart';
import 'or_a_i_widget.dart' show OrAIWidget;
import 'package:flutter/material.dart';

class OrAIModel extends FlutterFlowModel<OrAIWidget> {
  ///  Local state fields for this page.

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
