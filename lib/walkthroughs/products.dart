import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough_components/favourite_product/favourite_product_widget.dart';
import '/walkthrough_components/add_product_tocart/add_product_tocart_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final rowJjffsip9 = GlobalKey();
final buttonX4392ghi = GlobalKey();

/// Products
///
/// displays the product which you tapped from list
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: rowJjffsip9,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).secondary,
        contents: [
          TargetContent(
            align: ContentAlign.left,
            builder: (context, __) => const FavouriteProductWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonX4392ghi,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).secondary,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const AddProductTocartWidget(),
          ),
        ],
      ),
    ];
