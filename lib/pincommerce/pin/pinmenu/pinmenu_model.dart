import '/flutter_flow/flutter_flow_util.dart';
import 'pinmenu_widget.dart' show PinmenuWidget;
import 'package:flutter/material.dart';

class PinmenuModel extends FlutterFlowModel<PinmenuWidget> {
  ///  Local state fields for this page.

  String? item;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
