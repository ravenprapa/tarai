import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'posts_model.dart';
export 'posts_model.dart';

class PostsWidget extends StatefulWidget {
  const PostsWidget({
    super.key,
    required this.par,
    required this.collections,
  });

  final ParRow? par;
  final ParncollRow? collections;

  @override
  State<PostsWidget> createState() => _PostsWidgetState();
}

class _PostsWidgetState extends State<PostsWidget>
    with TickerProviderStateMixin {
  late PostsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.postindex = 0;
      });
      if (animationsMap['iconOnActionTriggerAnimation'] != null) {
        await animationsMap['iconOnActionTriggerAnimation']!
            .controller
            .forward(from: 0.0);
      }
      _model.posts = await NotionpostsCall.call(
        auth: widget.par?.accesstoken,
        pageid: widget.collections?.databaseid,
      );
      if ((_model.posts?.succeeded ?? true)) {
        while (_model.postindex! <
            NotionpostsCall.title(
              (_model.posts?.jsonBody ?? ''),
            )!
                .length) {
          _model.apiResultfov = await PostsTable().insert({
            'title': NotionpostsCall.title(
              (_model.posts?.jsonBody ?? ''),
            )?[_model.postindex!],
            'pageid': NotionpostsCall.pageids(
              (_model.posts?.jsonBody ?? ''),
            )?[_model.postindex!],
            'collection': widget.collections?.title,
          });
          _model.apiResult8bn = await UpdatenotionpgCall.call(
            auth: widget.par?.accesstoken,
            postid: NotionpostsCall.pageids(
              (_model.posts?.jsonBody ?? ''),
            )?[_model.postindex!],
          );
          setState(() {
            _model.postindex = _model.postindex! + 1;
          });
        }
        if (animationsMap['iconOnActionTriggerAnimation'] != null) {
          animationsMap['iconOnActionTriggerAnimation']!.controller.stop();
        }
      }
    });

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Posts',
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
                              child: FaIcon(
                                FontAwesomeIcons.circleNotch,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
                              )
                                  .animateOnPageLoad(
                                      animationsMap['iconOnPageLoadAnimation']!)
                                  .animateOnActionTrigger(
                                    animationsMap[
                                        'iconOnActionTriggerAnimation']!,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 14.0, 0.0),
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: FutureBuilder<List<PostsRow>>(
                  future: PostsTable().queryRows(
                    queryFn: (q) => q.eq(
                      'collection',
                      widget.collections?.title,
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
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                        ),
                      );
                    }
                    List<PostsRow> columnPostsRowList = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(columnPostsRowList.length,
                          (columnIndex) {
                        final columnPostsRow = columnPostsRowList[columnIndex];
                        return Material(
                          color: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(0.0),
                              border: Border.all(
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 10.0, 0.0, 10.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      columnPostsRow.title,
                                      'title',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ],
                            ),
                          ),
                        );
                      }).addToEnd(const SizedBox(height: 64.0)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
