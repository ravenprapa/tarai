import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tar_a_i_widget.dart' show TarAIWidget;
import 'package:flutter/material.dart';

class TarAIModel extends FlutterFlowModel<TarAIWidget> {
  ///  Local state fields for this page.

  String? response;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (groq)] action in TextField widget.
  ApiCallResponse? grokresponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
