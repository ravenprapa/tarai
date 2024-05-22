import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'site_widget.dart' show SiteWidget;
import 'package:flutter/material.dart';

class SiteModel extends FlutterFlowModel<SiteWidget> {
  ///  Local state fields for this page.

  int? type = 0;

  String? name;

  int? collectionindex = 0;

  bool state = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ParRow>? getdate;
  // Stores action output result for [Backend Call - API (notioncollections)] action in Container widget.
  ApiCallResponse? ncollections;
  // Stores action output result for [Backend Call - API (postdbid)] action in Container widget.
  ApiCallResponse? collid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
