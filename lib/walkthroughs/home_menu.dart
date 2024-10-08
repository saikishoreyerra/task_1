import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough_components/menu_bar/menu_bar_widget.dart';
import '/components/search_products_widget.dart';
import '/components/filter_products_widget.dart';
import '/components/view_products_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final iconButtonVrxd9kie = GlobalKey();
final textFieldZs5ndlmr = GlobalKey();
final iconKei8ei5k = GlobalKey();
final containerJpcelhg7 = GlobalKey();

/// Home Menu
///
/// shows all pages and also navigates to them once clicked
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: iconButtonVrxd9kie,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).secondary,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const MenuBarWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldZs5ndlmr,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).secondary,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const SearchProductsWidget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: iconKei8ei5k,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).secondary,
        contents: [
          TargetContent(
            align: ContentAlign.left,
            builder: (context, __) => const FilterProductsWidget(),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerJpcelhg7,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).secondary,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const ViewProductsWidget(),
          ),
        ],
      ),
    ];
