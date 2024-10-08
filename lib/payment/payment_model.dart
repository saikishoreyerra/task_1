import '/components/product_list_card_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_widget.dart' show PaymentWidget;
import 'package:flutter/material.dart';

class PaymentModel extends FlutterFlowModel<PaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for productListCard component.
  late ProductListCardModel productListCardModel1;
  // Model for productListCard component.
  late ProductListCardModel productListCardModel2;
  // Model for productListCard component.
  late ProductListCardModel productListCardModel3;
  // Model for productListCard component.
  late ProductListCardModel productListCardModel4;
  // Model for productListCard component.
  late ProductListCardModel productListCardModel5;
  // Model for productListCard component.
  late ProductListCardModel productListCardModel6;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    productListCardModel1 = createModel(context, () => ProductListCardModel());
    productListCardModel2 = createModel(context, () => ProductListCardModel());
    productListCardModel3 = createModel(context, () => ProductListCardModel());
    productListCardModel4 = createModel(context, () => ProductListCardModel());
    productListCardModel5 = createModel(context, () => ProductListCardModel());
    productListCardModel6 = createModel(context, () => ProductListCardModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productListCardModel1.dispose();
    productListCardModel2.dispose();
    productListCardModel3.dispose();
    productListCardModel4.dispose();
    productListCardModel5.dispose();
    productListCardModel6.dispose();
  }
}
