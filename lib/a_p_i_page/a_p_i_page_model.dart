import '/flutter_flow/flutter_flow_util.dart';
import 'a_p_i_page_widget.dart' show APIPageWidget;
import 'package:flutter/material.dart';

class APIPageModel extends FlutterFlowModel<APIPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
