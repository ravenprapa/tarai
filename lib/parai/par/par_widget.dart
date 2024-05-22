import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/parai/image/image_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'par_model.dart';
export 'par_model.dart';

class ParWidget extends StatefulWidget {
  const ParWidget({
    super.key,
    required this.value,
    required this.mode,
    required this.upload,
    this.item,
  });

  final int? value;
  final String? mode;
  final int? upload;
  final ItemsRow? item;

  @override
  State<ParWidget> createState() => _ParWidgetState();
}

class _ParWidgetState extends State<ParWidget> with TickerProviderStateMixin {
  late ParModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.value = widget.value;
        _model.type = widget.mode;
      });
    });

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'par',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 28.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                        lineHeight: 1.0,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  14.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  _model.type,
                                  'type',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                        if (_model.value == 1)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 14.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  setState(() => _model.isDataUploading = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  try {
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                            ))
                                        .toList();
                                  } finally {
                                    _model.isDataUploading = false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                      selectedMedia.length) {
                                    setState(() {
                                      _model.uploadedLocalFile =
                                          selectedUploadedFiles.first;
                                    });
                                  } else {
                                    setState(() {});
                                    return;
                                  }
                                }

                                if (animationsMap[
                                        'iconOnActionTriggerAnimation'] !=
                                    null) {
                                  animationsMap[
                                          'iconOnActionTriggerAnimation']!
                                      .controller
                                    ..reset()
                                    ..repeat();
                                }
                                if ((_model.uploadedLocalFile.bytes
                                            ?.isNotEmpty ??
                                        false)) {
                                  _model.file1 = await UploadfileCall.call(
                                    file: _model.uploadedLocalFile,
                                  );
                                  await FilesTable().insert({
                                    'type': _model.type,
                                    'url':
                                        'https://files2.parai.space/${getJsonField(
                                      (_model.file1?.jsonBody ?? ''),
                                      r'''$.collectionId''',
                                    ).toString()}%2F${getJsonField(
                                      (_model.file1?.jsonBody ?? ''),
                                      r'''$.id''',
                                    ).toString()}%2F${getJsonField(
                                      (_model.file1?.jsonBody ?? ''),
                                      r'''$.file''',
                                    ).toString()}',
                                    'size': functions
                                        .filesize(_model.uploadedLocalFile),
                                  });
                                  setState(
                                      () => _model.requestCompleter = null);
                                  await _model.waitForRequestCompleted();
                                  if (animationsMap[
                                          'iconOnActionTriggerAnimation'] !=
                                      null) {
                                    animationsMap[
                                            'iconOnActionTriggerAnimation']!
                                        .controller
                                        .reset();
                                  }
                                } else {
                                  if (animationsMap[
                                          'iconOnActionTriggerAnimation'] !=
                                      null) {
                                    animationsMap[
                                            'iconOnActionTriggerAnimation']!
                                        .controller
                                        .reset();
                                  }
                                }

                                setState(() {});
                              },
                              child: Icon(
                                Icons.add,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ).animateOnActionTrigger(
                              animationsMap['iconOnActionTriggerAnimation']!,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget.mode != 'upload')
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  _model.value = 0;
                                  _model.type = 'sites';
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.globe,
                                  color: _model.value == 0
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .customColor1,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  _model.value = 1;
                                  _model.type = 'images';
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.image_outlined,
                                  color: _model.value == 1
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .customColor1,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.video_label_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.audiotrack_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.padding,
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  size: 24.0,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.85,
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.value == 0)
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.8,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: FutureBuilder<List<ParRow>>(
                                    future: _model.par(
                                      requestFn: () => ParTable().queryRows(
                                        queryFn: (q) => q.eq(
                                          'user',
                                          currentUserEmail,
                                        ),
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 10.0,
                                            height: 10.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<ParRow> listViewParRowList =
                                          snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewParRowList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewParRow =
                                              listViewParRowList[listViewIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'site',
                                                queryParameters: {
                                                  'par': serializeParam(
                                                    listViewParRow,
                                                    ParamType.SupabaseRow,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: 100.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    listViewParRow.url,
                                                    'url',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              if (_model.value == 1)
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.8,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 10.0, 5.0, 0.0),
                                    child: FutureBuilder<List<FilesRow>>(
                                      future: (_model.requestCompleter ??=
                                              Completer<List<FilesRow>>()
                                                ..complete(
                                                    FilesTable().queryRows(
                                                  queryFn: (q) => q,
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 10.0,
                                              height: 10.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FilesRow> gridViewFilesRowList =
                                            snapshot.data!;
                                        return GridView.builder(
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 5.0,
                                            mainAxisSpacing: 5.0,
                                            childAspectRatio: 1.0,
                                          ),
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              gridViewFilesRowList.length,
                                          itemBuilder:
                                              (context, gridViewIndex) {
                                            final gridViewFilesRow =
                                                gridViewFilesRowList[
                                                    gridViewIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (widget.mode == 'upload') {
                                                  context.safePop();
                                                } else {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: SizedBox(
                                                            height: 600.0,
                                                            child: ImageWidget(
                                                              image:
                                                                  gridViewFilesRow,
                                                              upload: widget
                                                                  .upload!,
                                                              item: widget.item,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                }
                                              },
                                              child: Hero(
                                                tag: gridViewFilesRow.url!,
                                                transitionOnUserGestures: true,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: CachedNetworkImage(
                                                    fadeInDuration: const Duration(
                                                        milliseconds: 0),
                                                    fadeOutDuration: const Duration(
                                                        milliseconds: 0),
                                                    imageUrl:
                                                        gridViewFilesRow.url!,
                                                    width: double.infinity,
                                                    height: 260.0,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ].addToEnd(const SizedBox(height: 64.0)),
          ),
        ),
      ),
    );
  }
}
