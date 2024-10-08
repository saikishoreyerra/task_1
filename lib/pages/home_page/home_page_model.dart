import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? homeMenuController;
  final unfocusNode = FocusNode();
  // State field(s) for clothes_TextField widget.
  FocusNode? clothesTextFieldFocusNode;
  TextEditingController? clothesTextFieldTextController;
  String? Function(BuildContext, String?)?
      clothesTextFieldTextControllerValidator;
  List<ClothesRecord> simpleSearchResults1 = [];
  // State field(s) for groceries_TextField widget.
  FocusNode? groceriesTextFieldFocusNode;
  TextEditingController? groceriesTextFieldTextController;
  String? Function(BuildContext, String?)?
      groceriesTextFieldTextControllerValidator;
  List<GroceriesRecord> simpleSearchResults2 = [];
  // State field(s) for watches_TextField widget.
  FocusNode? watchesTextFieldFocusNode;
  TextEditingController? watchesTextFieldTextController;
  String? Function(BuildContext, String?)?
      watchesTextFieldTextControllerValidator;
  List<WatchesRecord> simpleSearchResults3 = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    homeMenuController?.finish();
    unfocusNode.dispose();
    clothesTextFieldFocusNode?.dispose();
    clothesTextFieldTextController?.dispose();

    groceriesTextFieldFocusNode?.dispose();
    groceriesTextFieldTextController?.dispose();

    watchesTextFieldFocusNode?.dispose();
    watchesTextFieldTextController?.dispose();

    tabBarController?.dispose();
  }
}
