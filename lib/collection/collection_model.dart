import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'collection_widget.dart' show CollectionWidget;
import 'package:flutter/material.dart';

class CollectionModel extends FlutterFlowModel<CollectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<WatchesRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
