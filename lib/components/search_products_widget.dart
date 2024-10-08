import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search_products_model.dart';
export 'search_products_model.dart';

class SearchProductsWidget extends StatefulWidget {
  const SearchProductsWidget({super.key});

  @override
  State<SearchProductsWidget> createState() => _SearchProductsWidgetState();
}

class _SearchProductsWidgetState extends State<SearchProductsWidget> {
  late SearchProductsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchProductsModel());
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
        '9pznvosu' /* helps you in search for produc... */,
      ),
      minFontSize: 20.0,
      style: GoogleFonts.getFont(
        'Gochi Hand',
        color: FlutterFlowTheme.of(context).secondaryBackground,
        fontSize: 50.0,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
