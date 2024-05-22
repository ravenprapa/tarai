import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'image_model.dart';
export 'image_model.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    super.key,
    required this.image,
    required this.upload,
    this.item,
  });

  final FilesRow? image;
  final int? upload;
  final ItemsRow? item;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  late ImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageModel());

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
      height: 600.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network(
              widget.image!.url!,
              width: 400.0,
              height: 400.0,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Clipboard.setData(
                        ClipboardData(text: widget.image!.url!));
                  },
                  child: Text(
                    '${widget.image?.size?.toString()} kb',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await FilesTable().delete(
                          matchingRows: (rows) => rows.eq(
                            'id',
                            widget.image?.id,
                          ),
                        );

                        context.pushNamed(
                          'par',
                          queryParameters: {
                            'value': serializeParam(
                              1,
                              ParamType.int,
                            ),
                            'mode': serializeParam(
                              'images',
                              ParamType.String,
                            ),
                            'upload': serializeParam(
                              0,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Icon(
                        Icons.highlight_off_sharp,
                        color: FlutterFlowTheme.of(context).customColor1,
                        size: 28.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Clipboard.setData(
                            ClipboardData(text: widget.image!.url!));
                      },
                      child: Icon(
                        Icons.content_copy,
                        color: FlutterFlowTheme.of(context).customColor1,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (widget.upload == 1)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() {
                    FFAppState().addToImages(widget.image!.url!);
                  });

                  context.pushNamed(
                    'itemdetails',
                    queryParameters: {
                      'items': serializeParam(
                        widget.item,
                        ParamType.SupabaseRow,
                      ),
                    }.withoutNulls,
                  );
                },
                text: 'Select',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 50.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFFECECEC),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
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
