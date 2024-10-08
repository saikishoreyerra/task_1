import '/flutter_flow/flutter_flow_util.dart';
import 'cust_code_widget.dart' show CustCodeWidget;
import 'package:flutter/material.dart';

class CustCodeModel extends FlutterFlowModel<CustCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
