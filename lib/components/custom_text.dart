import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';

class WidgetCustomText extends StatefulWidget {
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
  State<WidgetCustomText> createState() => _WidgetCustomTextState();
}

class _WidgetCustomTextState extends State<WidgetCustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text ?? 'Text',
      style: TextStyle(
        fontSize: widget.size ?? 20,
        color: widget.color ?? AppColors.white,
        fontWeight: widget.fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
