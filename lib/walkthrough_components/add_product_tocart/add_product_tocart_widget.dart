import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_product_tocart_model.dart';
export 'add_product_tocart_model.dart';

class AddProductTocartWidget extends StatefulWidget {
  const AddProductTocartWidget({super.key});

  @override
  State<AddProductTocartWidget> createState() => _AddProductTocartWidgetState();
}

class _AddProductTocartWidgetState extends State<AddProductTocartWidget> {
  late AddProductTocartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddProductTocartModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      FFLocalizations.of(context).getText(
        'fzf6pxe6' /* helps you to add item to cart */,
      ),
      minFontSize: 20.0,
      style: GoogleFonts.getFont(
        'Gochi Hand',
        color: FlutterFlowTheme.of(context).secondaryBackground,
        fontSize: 50.0,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
