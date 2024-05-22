import '/flutter_flow/flutter_flow_util.dart';
import 'space_widget.dart' show SpaceWidget;
import 'package:flutter/material.dart';

class SpaceModel extends FlutterFlowModel<SpaceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
