import '/flutter_flow/flutter_flow_util.dart';
import 'people_widget.dart' show PeopleWidget;
import 'package:flutter/material.dart';

class PeopleModel extends FlutterFlowModel<PeopleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
