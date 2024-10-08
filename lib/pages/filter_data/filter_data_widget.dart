import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'filter_data_model.dart';
export 'filter_data_model.dart';

class FilterDataWidget extends StatefulWidget {
  const FilterDataWidget({
    super.key,
    bool? clothDataModify,
    bool? groceryDataModify,
    bool? watchDataModify,
  })  : clothDataModify = clothDataModify ?? false,
        groceryDataModify = groceryDataModify ?? false,
        watchDataModify = watchDataModify ?? false;

  final bool clothDataModify;
  final bool groceryDataModify;
  final bool watchDataModify;

  @override
  State<FilterDataWidget> createState() => _FilterDataWidgetState();
}

class _FilterDataWidgetState extends State<FilterDataWidget> {
  late FilterDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterDataModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '6f0h7mvs' /* Search Product */,
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 7.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.clothDataModify == true)
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.clothesTypeValueController ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'ccyzdn2o' /* Men */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '49o4lmvu' /* Women */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'et73zyq6' /* Children */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.clothesTypeValue = val),
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'yex0hp7o' /* Type */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.clothesPriceSortValueController ??=
                                        FormFieldController<String>(
                                  _model.clothesPriceSortValue ??=
                                      FFLocalizations.of(context).getText(
                                    'ifx7blas' /* Price increasing */,
                                  ),
                                ),
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'rhrqemjh' /* Price increasing */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'vfg411np' /* Price decreasing */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.clothesPriceSortValue = val),
                                width: 180.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '002o96du' /* Sort by */,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 12.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SliderTheme(
                                        data: const SliderThemeData(
                                          showValueIndicator:
                                              ShowValueIndicator.always,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Slider(
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            inactiveColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            min: 500.0,
                                            max: 5000.0,
                                            value: _model.priceSliderValue1 ??=
                                                500.0,
                                            label: _model.priceSliderValue1
                                                ?.toStringAsFixed(0),
                                            onChanged: (newValue) async {
                                              newValue = double.parse(
                                                  newValue.toStringAsFixed(0));
                                              setState(() =>
                                                  _model.priceSliderValue1 =
                                                      newValue);
                                              FFAppState().price =
                                                  valueOrDefault<double>(
                                                _model.priceSliderValue1,
                                                0.0,
                                              );
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          _model.priceSliderValue1?.toString(),
                                          '--',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.clothesPriceSortValueController
                                          ?.reset();
                                      _model.clothesTypeValueController
                                          ?.reset();
                                    });
                                    setState(() {
                                      _model.priceSliderValue1 = 500.0;
                                    });
                                  },
                                  child: Icon(
                                    Icons.replay_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 25.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (_model.clothesPriceSortValue ==
                              'Price increasing')
                            Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.7,
                              decoration: const BoxDecoration(),
                              child: StreamBuilder<List<ClothesRecord>>(
                                stream: queryClothesRecord(
                                  queryBuilder: (clothesRecord) => clothesRecord
                                      .where(
                                        'price',
                                        isGreaterThan: FFAppState().price,
                                      )
                                      .where(
                                        'type',
                                        isEqualTo: _model.clothesTypeValue,
                                      )
                                      .orderBy('price'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 75.0,
                                        height: 75.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 75.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<ClothesRecord> columnClothesRecordList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: List.generate(
                                          columnClothesRecordList.length,
                                          (columnIndex) {
                                        final columnClothesRecord =
                                            columnClothesRecordList[
                                                columnIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await columnClothesRecord
                                                  .reference
                                                  .update(
                                                      createClothesRecordData(
                                                price:
                                                    columnClothesRecord.price,
                                              ));
                                              setState(() {
                                                _model.priceSliderValue1 =
                                                    valueOrDefault<double>(
                                                  _model.priceSliderValue1,
                                                  500.0,
                                                );
                                              });
                                            },
                                            onDoubleTap: () async {},
                                            child: Container(
                                              width: double.infinity,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'ProductPage',
                                                    queryParameters: {
                                                      'clothesdata':
                                                          serializeParam(
                                                        columnClothesRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'clothesdata':
                                                          columnClothesRecord,
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(5.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                        child: Image.network(
                                                          columnClothesRecord
                                                              .image,
                                                          width: 90.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
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
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnClothesRecord
                                                                    .name,
                                                                '--',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnClothesRecord
                                                                      .desc,
                                                                  '--',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnClothesRecord
                                                                    .price
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                          if (_model.clothesPriceSortValue ==
                              'Price decreasing')
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: StreamBuilder<List<ClothesRecord>>(
                                stream: queryClothesRecord(
                                  queryBuilder: (clothesRecord) => clothesRecord
                                      .where(
                                        'price',
                                        isGreaterThan: FFAppState().price,
                                      )
                                      .where(
                                        'type',
                                        isEqualTo: _model.clothesTypeValue,
                                      )
                                      .orderBy('price', descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 75.0,
                                        height: 75.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 75.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<ClothesRecord> columnClothesRecordList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: List.generate(
                                          columnClothesRecordList.length,
                                          (columnIndex) {
                                        final columnClothesRecord =
                                            columnClothesRecordList[
                                                columnIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await columnClothesRecord
                                                  .reference
                                                  .update(
                                                      createClothesRecordData(
                                                price:
                                                    columnClothesRecord.price,
                                              ));
                                              setState(() {
                                                _model.priceSliderValue1 =
                                                    valueOrDefault<double>(
                                                  _model.priceSliderValue1,
                                                  500.0,
                                                );
                                              });
                                            },
                                            onDoubleTap: () async {},
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                          .width >=
                                                      1280.0
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.5)
                                                  : MediaQuery.sizeOf(context)
                                                      .width,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'ProductPage',
                                                    queryParameters: {
                                                      'clothesdata':
                                                          serializeParam(
                                                        columnClothesRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'clothesdata':
                                                          columnClothesRecord,
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(5.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                        child: Image.network(
                                                          columnClothesRecord
                                                              .image,
                                                          width: 90.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
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
                                                            Text(
                                                              columnClothesRecord
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              columnClothesRecord
                                                                  .desc,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              columnClothesRecord
                                                                  .price
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                if (widget.groceryDataModify == true)
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.groceryTypeValueController ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'vylr7nm4' /* Eatables */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'zpbej5es' /* Healthcare */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '15py46az' /* Dairy */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.groceryTypeValue = val),
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'usm01eis' /* Type */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.groceryPriceSortValueController ??=
                                        FormFieldController<String>(
                                  _model.groceryPriceSortValue ??=
                                      FFLocalizations.of(context).getText(
                                    'tjt0bwfv' /* Price increasing */,
                                  ),
                                ),
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'hooovnhq' /* Price increasing */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'i6g4qafd' /* Price decreasing */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.groceryPriceSortValue = val),
                                width: 180.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'aagrsqb3' /* Sort by */,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 12.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SliderTheme(
                                        data: const SliderThemeData(
                                          showValueIndicator:
                                              ShowValueIndicator.always,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Slider(
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            inactiveColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            min: 50.0,
                                            max: 2500.0,
                                            value: _model.priceSliderValue2 ??=
                                                50.0,
                                            label: _model.priceSliderValue2
                                                ?.toStringAsFixed(0),
                                            onChanged: (newValue) async {
                                              newValue = double.parse(
                                                  newValue.toStringAsFixed(0));
                                              setState(() =>
                                                  _model.priceSliderValue2 =
                                                      newValue);
                                              FFAppState().price =
                                                  valueOrDefault<double>(
                                                _model.priceSliderValue2,
                                                0.0,
                                              );
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          _model.priceSliderValue2?.toString(),
                                          '--',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.groceryPriceSortValueController
                                          ?.reset();
                                      _model.groceryTypeValueController
                                          ?.reset();
                                    });
                                    setState(() {
                                      _model.priceSliderValue2 = 500.0;
                                    });
                                  },
                                  child: Icon(
                                    Icons.replay_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 25.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (_model.groceryPriceSortValue ==
                              'Price increasing')
                            Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.7,
                              decoration: const BoxDecoration(),
                              child: StreamBuilder<List<GroceriesRecord>>(
                                stream: queryGroceriesRecord(
                                  queryBuilder: (groceriesRecord) =>
                                      groceriesRecord
                                          .where(
                                            'price',
                                            isGreaterThan: FFAppState().price,
                                          )
                                          .where(
                                            'type',
                                            isEqualTo: _model.groceryTypeValue,
                                          )
                                          .orderBy('price'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 75.0,
                                        height: 75.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 75.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<GroceriesRecord>
                                      columnGroceriesRecordList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: List.generate(
                                          columnGroceriesRecordList.length,
                                          (columnIndex) {
                                        final columnGroceriesRecord =
                                            columnGroceriesRecordList[
                                                columnIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await columnGroceriesRecord
                                                  .reference
                                                  .update(
                                                      createGroceriesRecordData(
                                                price:
                                                    columnGroceriesRecord.price,
                                              ));
                                              setState(() {
                                                _model.priceSliderValue2 =
                                                    valueOrDefault<double>(
                                                  _model.priceSliderValue2,
                                                  500.0,
                                                );
                                              });
                                            },
                                            onDoubleTap: () async {},
                                            child: Container(
                                              width: double.infinity,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'ProductPage',
                                                    queryParameters: {
                                                      'groceriesdata':
                                                          serializeParam(
                                                        columnGroceriesRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'groceriesdata':
                                                          columnGroceriesRecord,
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(5.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                        child: Image.network(
                                                          columnGroceriesRecord
                                                              .image,
                                                          width: 90.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
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
                                                            Text(
                                                              columnGroceriesRecord
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnGroceriesRecord
                                                                      .desc,
                                                                  '--',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnGroceriesRecord
                                                                    .price
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                          if (_model.groceryPriceSortValue ==
                              'Price decreasing')
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: StreamBuilder<List<GroceriesRecord>>(
                                stream: queryGroceriesRecord(
                                  queryBuilder: (groceriesRecord) =>
                                      groceriesRecord
                                          .where(
                                            'price',
                                            isGreaterThan: FFAppState().price,
                                          )
                                          .where(
                                            'type',
                                            isEqualTo: _model.groceryTypeValue,
                                          )
                                          .orderBy('price', descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 75.0,
                                        height: 75.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 75.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<GroceriesRecord>
                                      columnGroceriesRecordList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: List.generate(
                                          columnGroceriesRecordList.length,
                                          (columnIndex) {
                                        final columnGroceriesRecord =
                                            columnGroceriesRecordList[
                                                columnIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await columnGroceriesRecord
                                                  .reference
                                                  .update(
                                                      createGroceriesRecordData(
                                                price:
                                                    columnGroceriesRecord.price,
                                              ));
                                              setState(() {
                                                _model.priceSliderValue2 =
                                                    valueOrDefault<double>(
                                                  _model.priceSliderValue2,
                                                  500.0,
                                                );
                                              });
                                            },
                                            onDoubleTap: () async {},
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                          .width >=
                                                      1280.0
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.5)
                                                  : MediaQuery.sizeOf(context)
                                                      .width,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'ProductPage',
                                                    queryParameters: {
                                                      'groceriesdata':
                                                          serializeParam(
                                                        columnGroceriesRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'groceriesdata':
                                                          columnGroceriesRecord,
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(5.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                        child: Image.network(
                                                          columnGroceriesRecord
                                                              .image,
                                                          width: 90.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
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
                                                            Text(
                                                              columnGroceriesRecord
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              columnGroceriesRecord
                                                                  .desc,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              columnGroceriesRecord
                                                                  .price
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                if (widget.watchDataModify == true)
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.watchTypeValueController ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'ku4kjtdz' /* Analogue */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'f6x0y5xz' /* Digital */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.watchTypeValue = val),
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'zqbquiz0' /* Type */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 12.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                              FlutterFlowDropDown<String>(
                                controller:
                                    _model.watchPriceSortValueController ??=
                                        FormFieldController<String>(
                                  _model.watchPriceSortValue ??=
                                      FFLocalizations.of(context).getText(
                                    'wkm7jkz2' /* Price increasing */,
                                  ),
                                ),
                                options: [
                                  FFLocalizations.of(context).getText(
                                    '3odjtxkz' /* Price increasing */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'jwux5gqy' /* Price decreasing */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.watchPriceSortValue = val),
                                width: 180.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '3f8coipv' /* Sort by */,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 12.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SliderTheme(
                                        data: const SliderThemeData(
                                          showValueIndicator:
                                              ShowValueIndicator.always,
                                        ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Slider(
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            inactiveColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            min: 1000.0,
                                            max: 15000.0,
                                            value: _model.priceSliderValue3 ??=
                                                1000.0,
                                            label: _model.priceSliderValue3
                                                ?.toStringAsFixed(0),
                                            onChanged: (newValue) async {
                                              newValue = double.parse(
                                                  newValue.toStringAsFixed(0));
                                              setState(() =>
                                                  _model.priceSliderValue3 =
                                                      newValue);
                                              FFAppState().price =
                                                  valueOrDefault<double>(
                                                _model.priceSliderValue3,
                                                0.0,
                                              );
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          _model.priceSliderValue3?.toString(),
                                          '--',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.watchPriceSortValueController
                                          ?.reset();
                                      _model.watchTypeValueController?.reset();
                                    });
                                    setState(() {
                                      _model.priceSliderValue3 = 1000.0;
                                    });
                                  },
                                  child: Icon(
                                    Icons.replay_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 25.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (_model.watchPriceSortValue == 'Price increasing')
                            Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.7,
                              decoration: const BoxDecoration(),
                              child: StreamBuilder<List<WatchesRecord>>(
                                stream: queryWatchesRecord(
                                  queryBuilder: (watchesRecord) => watchesRecord
                                      .where(
                                        'price',
                                        isGreaterThan: FFAppState().price,
                                      )
                                      .where(
                                        'type',
                                        isEqualTo: _model.watchTypeValue,
                                      )
                                      .orderBy('price'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 75.0,
                                        height: 75.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 75.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<WatchesRecord> columnWatchesRecordList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          columnWatchesRecordList.length,
                                          (columnIndex) {
                                        final columnWatchesRecord =
                                            columnWatchesRecordList[
                                                columnIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await columnWatchesRecord
                                                  .reference
                                                  .update(
                                                      createWatchesRecordData(
                                                price:
                                                    columnWatchesRecord.price,
                                              ));
                                              setState(() {
                                                _model.priceSliderValue3 =
                                                    valueOrDefault<double>(
                                                  _model.priceSliderValue3,
                                                  500.0,
                                                );
                                              });
                                            },
                                            onDoubleTap: () async {},
                                            child: Container(
                                              width: double.infinity,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'ProductPage',
                                                    queryParameters: {
                                                      'watchesdata':
                                                          serializeParam(
                                                        columnWatchesRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'watchesdata':
                                                          columnWatchesRecord,
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(5.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                        child: Image.network(
                                                          columnWatchesRecord
                                                              .image,
                                                          width: 90.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
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
                                                            Text(
                                                              columnWatchesRecord
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  columnWatchesRecord
                                                                      .desc,
                                                                  '--',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnWatchesRecord
                                                                    .price
                                                                    .toString(),
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                          if (_model.watchPriceSortValue == 'Price decreasing')
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: StreamBuilder<List<WatchesRecord>>(
                                stream: queryWatchesRecord(
                                  queryBuilder: (watchesRecord) => watchesRecord
                                      .where(
                                        'price',
                                        isGreaterThan: FFAppState().price,
                                      )
                                      .where(
                                        'type',
                                        isEqualTo: _model.watchTypeValue,
                                      )
                                      .orderBy('price', descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 75.0,
                                        height: 75.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 75.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<WatchesRecord> columnWatchesRecordList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: List.generate(
                                          columnWatchesRecordList.length,
                                          (columnIndex) {
                                        final columnWatchesRecord =
                                            columnWatchesRecordList[
                                                columnIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await columnWatchesRecord
                                                  .reference
                                                  .update(
                                                      createWatchesRecordData(
                                                price:
                                                    columnWatchesRecord.price,
                                              ));
                                              setState(() {
                                                _model.priceSliderValue3 =
                                                    valueOrDefault<double>(
                                                  _model.priceSliderValue3,
                                                  500.0,
                                                );
                                              });
                                            },
                                            onDoubleTap: () async {},
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                          .width >=
                                                      1280.0
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.5)
                                                  : MediaQuery.sizeOf(context)
                                                      .width,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'ProductPage',
                                                    queryParameters: {
                                                      'watchesdata':
                                                          serializeParam(
                                                        columnWatchesRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'watchesdata':
                                                          columnWatchesRecord,
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(5.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.0),
                                                        child: Image.network(
                                                          columnWatchesRecord
                                                              .image,
                                                          width: 90.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    15.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
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
                                                            Text(
                                                              columnWatchesRecord
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              columnWatchesRecord
                                                                  .desc,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Text(
                                                              columnWatchesRecord
                                                                  .price
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
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
