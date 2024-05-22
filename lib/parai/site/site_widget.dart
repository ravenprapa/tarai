import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'site_model.dart';
export 'site_model.dart';

class SiteWidget extends StatefulWidget {
  const SiteWidget({
    super.key,
    required this.par,
  });

  final ParRow? par;

  @override
  State<SiteWidget> createState() => _SiteWidgetState();
}

class _SiteWidgetState extends State<SiteWidget> {
  late SiteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SiteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.type = 1;
        _model.name = 'details';
        _model.collectionindex = 0;
      });
    });

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
                                  valueOrDefault<String>(
                                    widget.par?.url,
                                    'site name',
                                  ),
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
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 14.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.chevron_left_outlined,
                              color: FlutterFlowTheme.of(context).customColor1,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
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
                                  valueOrDefault<String>(
                                    _model.name,
                                    'name',
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
                                        lineHeight: 1.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
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
                                  _model.type = 1;
                                  _model.name = 'details';
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.gitter,
                                  color: _model.type == 1
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .customColor1,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                          if (widget.par?.plan == 'notioncms')
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
                                    _model.type = 0;
                                    _model.name = 'post collections';
                                    _model.collectionindex = 0;
                                  });
                                  _model.getdate = await ParTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'id',
                                      widget.par?.id,
                                    ),
                                  );
                                  _model.ncollections =
                                      await NotioncollectionsCall.call(
                                    auth: widget.par?.accesstoken,
                                    pageid: widget.par?.templateid,
                                    createddate:
                                        _model.getdate?.first.lastcrtdt,
                                  );
                                  if (NotioncollectionsCall.title(
                                        (_model.ncollections?.jsonBody ?? ''),
                                      )!.isNotEmpty) {
                                    await Future.wait([
                                      Future(() async {
                                        while (_model.collectionindex! <=
                                            NotioncollectionsCall.title(
                                              (_model.ncollections?.jsonBody ??
                                                  ''),
                                            )!
                                                .length) {
                                          _model.collid =
                                              await PostdbidCall.call(
                                            auth: widget.par?.accesstoken,
                                            pageid:
                                                NotioncollectionsCall.pageids(
                                              (_model.ncollections?.jsonBody ??
                                                  ''),
                                            )?[_model.collectionindex!],
                                          );
                                          await ParncollTable().insert({
                                            'title':
                                                NotioncollectionsCall.title(
                                              (_model.ncollections?.jsonBody ??
                                                  ''),
                                            )?[_model.collectionindex!],
                                            'collid':
                                                NotioncollectionsCall.pageids(
                                              (_model.ncollections?.jsonBody ??
                                                  ''),
                                            )?[_model.collectionindex!],
                                            'createdtime': NotioncollectionsCall
                                                .createdtime(
                                              (_model.ncollections?.jsonBody ??
                                                  ''),
                                            )?[_model.collectionindex!],
                                            'databaseid':
                                                PostdbidCall.databaseid(
                                              (_model.collid?.jsonBody ?? ''),
                                            ),
                                          });
                                          setState(() {
                                            _model.collectionindex =
                                                _model.collectionindex! + 1;
                                          });
                                        }
                                      }),
                                      Future(() async {
                                        await ParTable().update(
                                          data: {
                                            'lastcrtdt': NotioncollectionsCall
                                                .createdtime(
                                              (_model.ncollections?.jsonBody ??
                                                  ''),
                                            )?.last,
                                            'noofitems':
                                                NotioncollectionsCall.title(
                                              (_model.ncollections?.jsonBody ??
                                                  ''),
                                            )?.length,
                                          },
                                          matchingRows: (rows) => rows.eq(
                                            'id',
                                            widget.par?.id,
                                          ),
                                        );
                                      }),
                                    ]);
                                  }

                                  setState(() {});
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.drum,
                                    color: _model.type == 0
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context)
                                            .customColor1,
                                    size: 24.0,
                                  ),
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
                                  _model.type = 2;
                                  _model.name = 'analytics';
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.analytics_outlined,
                                  color: _model.type == 2
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .customColor1,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.type == 0)
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 0.8,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FutureBuilder<List<ParncollRow>>(
                                        future: ParncollTable().queryRows(
                                          queryFn: (q) => q,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: LinearProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            );
                                          }
                                          List<ParncollRow>
                                              listViewParncollRowList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewParncollRowList.length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewParncollRow =
                                                  listViewParncollRowList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'posts',
                                                      queryParameters: {
                                                        'par': serializeParam(
                                                          widget.par,
                                                          ParamType.SupabaseRow,
                                                        ),
                                                        'collections':
                                                            serializeParam(
                                                          listViewParncollRow,
                                                          ParamType.SupabaseRow,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        border: Border.all(
                                                          color:
                                                              const Color(0xFFEBEBEC),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewParncollRow
                                                                    .title,
                                                                'title',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ].addToEnd(const SizedBox(height: 64.0)),
                                  ),
                                ),
                              ),
                          ],
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
