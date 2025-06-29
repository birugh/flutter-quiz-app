import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class WidgetCustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? align;
  const WidgetCustomText({
    super.key,
    this.text,
    this.size,
    this.color,
    this.fontWeight,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Text',
      style: GoogleFonts.urbanist(
        fontSize: size ?? 20,
        color: color ?? AppColors.white,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
      textAlign: align ?? TextAlign.center,
    );
  }
}
