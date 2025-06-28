import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';

class WidgetCustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  const WidgetCustomText({
    super.key,
    this.text,
    this.size,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Text',
      style: TextStyle(
        fontSize: size ?? 20,
        color: color ?? AppColors.white,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
