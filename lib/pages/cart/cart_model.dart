import '/flutter_flow/flutter_flow_util.dart';
import '/walkthrough_components/cart_count/cart_count_widget.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  bool textfield = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cart_count component.
  late CartCountModel cartCountModel2;

  @override
  void initState(BuildContext context) {
    cartCountModel2 = createModel(context, () => CartCountModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartCountModel2.dispose();
  }
}
