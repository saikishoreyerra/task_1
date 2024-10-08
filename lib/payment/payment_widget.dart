import '/backend/backend.dart';
import '/components/product_list_card_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'payment_model.dart';
export 'payment_model.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  late PaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'nlrqxgr8' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 750.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: GridView(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      12.0,
                      0,
                      12.0,
                    ),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 0.8,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      wrapWithModel(
                        model: _model.productListCardModel1,
                        updateCallback: () => setState(() {}),
                        child: const ProductListCardWidget(),
                      ),
                      wrapWithModel(
                        model: _model.productListCardModel2,
                        updateCallback: () => setState(() {}),
                        child: const ProductListCardWidget(),
                      ),
                      wrapWithModel(
                        model: _model.productListCardModel3,
                        updateCallback: () => setState(() {}),
                        child: const ProductListCardWidget(),
                      ),
                      wrapWithModel(
                        model: _model.productListCardModel4,
                        updateCallback: () => setState(() {}),
                        child: const ProductListCardWidget(),
                      ),
                      wrapWithModel(
                        model: _model.productListCardModel5,
                        updateCallback: () => setState(() {}),
                        child: const ProductListCardWidget(),
                      ),
                      wrapWithModel(
                        model: _model.productListCardModel6,
                        updateCallback: () => setState(() {}),
                        child: const ProductListCardWidget(),
                      ),
                    ],
                  ),
                ),
                StreamBuilder<List<UsersRecord>>(
                  stream: queryUsersRecord(
                    queryBuilder: (usersRecord) => usersRecord.where(Filter.or(
                      Filter(
                        'created_time',
                        isGreaterThan: _model.calendarSelectedDay?.start,
                      ),
                      Filter(
                        'created_time',
                        isLessThan: _model.calendarSelectedDay?.end,
                      ),
                    )),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 75.0,
                          height: 75.0,
                          child: SpinKitRipple(
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 75.0,
                          ),
                        ),
                      );
                    }
                    List<UsersRecord> calendarUsersRecordList = snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final calendarUsersRecord =
                        calendarUsersRecordList.isNotEmpty
                            ? calendarUsersRecordList.first
                            : null;
                    return FlutterFlowCalendar(
                      color: FlutterFlowTheme.of(context).primary,
                      iconColor: FlutterFlowTheme.of(context).secondaryText,
                      weekFormat: true,
                      weekStartsMonday: false,
                      initialDate: FFAppState().calenderSelectedDay,
                      rowHeight: 64.0,
                      onChange: (DateTimeRange? newSelectedDate) async {
                        if (_model.calendarSelectedDay == newSelectedDate) {
                          return;
                        }
                        _model.calendarSelectedDay = newSelectedDate;
                        FFAppState().calenderSelectedDay =
                            _model.calendarSelectedDay?.start;
                        setState(() {});
                        setState(() {});
                      },
                      titleStyle:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      dayOfWeekStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      dateStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      selectedDateStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      inactiveDateStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      locale: FFLocalizations.of(context).languageCode,
                    );
                  },
                ),
                Text(
                  dateTimeFormat(
                    'MMMMEEEEd',
                    _model.calendarSelectedDay!.start,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
