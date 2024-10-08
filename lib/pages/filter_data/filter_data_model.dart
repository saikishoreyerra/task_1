import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_data_widget.dart' show FilterDataWidget;
import 'package:flutter/material.dart';

class FilterDataModel extends FlutterFlowModel<FilterDataWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for clothes_type widget.
  String? clothesTypeValue;
  FormFieldController<String>? clothesTypeValueController;
  // State field(s) for clothes_price_sort widget.
  String? clothesPriceSortValue;
  FormFieldController<String>? clothesPriceSortValueController;
  // State field(s) for price_Slider widget.
  double? priceSliderValue1;
  // State field(s) for grocery_type widget.
  String? groceryTypeValue;
  FormFieldController<String>? groceryTypeValueController;
  // State field(s) for grocery_price_sort widget.
  String? groceryPriceSortValue;
  FormFieldController<String>? groceryPriceSortValueController;
  // State field(s) for price_Slider widget.
  double? priceSliderValue2;
  // State field(s) for watch_type widget.
  String? watchTypeValue;
  FormFieldController<String>? watchTypeValueController;
  // State field(s) for watch_price_sort widget.
  String? watchPriceSortValue;
  FormFieldController<String>? watchPriceSortValueController;
  // State field(s) for price_Slider widget.
  double? priceSliderValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
