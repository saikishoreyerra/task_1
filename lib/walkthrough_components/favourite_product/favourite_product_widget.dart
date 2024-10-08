import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'favourite_product_model.dart';
export 'favourite_product_model.dart';

class FavouriteProductWidget extends StatefulWidget {
  const FavouriteProductWidget({super.key});

  @override
  State<FavouriteProductWidget> createState() => _FavouriteProductWidgetState();
}

class _FavouriteProductWidgetState extends State<FavouriteProductWidget> {
  late FavouriteProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouriteProductModel());
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
        'b76h4lhv' /* favourite item based on your i... */,
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
