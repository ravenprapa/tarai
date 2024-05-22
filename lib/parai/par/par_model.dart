import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'par_widget.dart' show ParWidget;
import 'package:flutter/material.dart';

class ParModel extends FlutterFlowModel<ParWidget> {
  ///  Local state fields for this page.

  int? value = 0;

  String? type;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (uploadfile)] action in imageup widget.
  ApiCallResponse? file1;
  Completer<List<FilesRow>>? requestCompleter;

  /// Query cache managers for this widget.

  final _parManager = FutureRequestManager<List<ParRow>>();
  Future<List<ParRow>> par({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ParRow>> Function() requestFn,
  }) =>
      _parManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearParCache() => _parManager.clear();
  void clearParCacheKey(String? uniqueKey) =>
      _parManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearParCache();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
