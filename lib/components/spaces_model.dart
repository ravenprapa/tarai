import '/flutter_flow/flutter_flow_util.dart';
import 'spaces_widget.dart' show SpacesWidget;
import 'package:flutter/material.dart';

class SpacesModel extends FlutterFlowModel<SpacesWidget> {
  ///  Local state fields for this component.

  String? image;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
