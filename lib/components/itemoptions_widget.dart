import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'itemoptions_model.dart';
export 'itemoptions_model.dart';

class ItemoptionsWidget extends StatefulWidget {
  const ItemoptionsWidget({
    super.key,
    required this.id,
  });

  final int? id;

  @override
  State<ItemoptionsWidget> createState() => _ItemoptionsWidgetState();
}

class _ItemoptionsWidgetState extends State<ItemoptionsWidget> {
  late ItemoptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemoptionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                await ItemsTable().delete(
                  matchingRows: (rows) => rows.eq(
                    'id',
                    widget.id,
                  ),
                );
              },
              text: 'Delete',
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFFECECEC),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ].addToEnd(const SizedBox(height: 64.0)),
      ),
    );
  }
}
