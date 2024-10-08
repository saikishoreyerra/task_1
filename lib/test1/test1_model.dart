import '/flutter_flow/flutter_flow_util.dart';
import 'test1_widget.dart' show Test1Widget;
import 'package:flutter/material.dart';

class Test1Model extends FlutterFlowModel<Test1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
