import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'spaces_model.dart';
export 'spaces_model.dart';

class SpacesWidget extends StatefulWidget {
  const SpacesWidget({super.key});

  @override
  State<SpacesWidget> createState() => _SpacesWidgetState();
}

class _SpacesWidgetState extends State<SpacesWidget> {
  late SpacesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpacesModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 14.0, 20.0, 24.0),
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).labelMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelMediumFamily),
                    ),
                hintText: 'Channel',
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).labelMediumFamily,
                      color: FlutterFlowTheme.of(context).customColor1,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelMediumFamily),
                    ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.network(
                  valueOrDefault<String>(
                    _model.image,
                    'https://openmoji.org/data/color/svg/1F365.svg',
                  ),
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Builder(
                builder: (context) {
                  final images = FFAppState().spaceicons.toList();
                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: images.length,
                    itemBuilder: (context, imagesIndex) {
                      final imagesItem = images[imagesIndex];
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              _model.image = imagesItem.url;
                            });
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                imagesItem.url,
                                'https://openmoji.org/data/color/svg/1F365.svg',
                              ),
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                setState(() {
                  FFAppState().addToSpaces(ChannelStruct(
                    channel: _model.textController.text,
                    cg: 'office',
                    icon: _model.image,
                  ));
                });
                Navigator.pop(context);
              },
              text: 'Add',
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 60.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 0.1,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              showLoadingIndicator: false,
            ),
          ),
        ],
      ),
    );
  }
}
