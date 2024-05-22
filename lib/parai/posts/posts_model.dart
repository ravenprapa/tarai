import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'posts_widget.dart' show PostsWidget;
import 'package:flutter/material.dart';

class PostsModel extends FlutterFlowModel<PostsWidget> {
  ///  Local state fields for this page.

  int? postindex = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (notionposts)] action in posts widget.
  ApiCallResponse? posts;
  // Stores action output result for [Backend Call - Insert Row] action in posts widget.
  PostsRow? apiResultfov;
  // Stores action output result for [Backend Call - API (updatenotionpg)] action in posts widget.
  ApiCallResponse? apiResult8bn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
