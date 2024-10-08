import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'filter_products_model.dart';
export 'filter_products_model.dart';

class FilterProductsWidget extends StatefulWidget {
  const FilterProductsWidget({super.key});

  @override
  State<FilterProductsWidget> createState() => _FilterProductsWidgetState();
}

class _FilterProductsWidgetState extends State<FilterProductsWidget> {
  late FilterProductsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterProductsModel());
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
        '0dhyunsn' /* filter out your favourite list... */,
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
