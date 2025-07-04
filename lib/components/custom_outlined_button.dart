import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'app_colors.dart';

class WidgetCustomButton extends StatelessWidget {
  final String? text;
  final double? scaleStroke;
  final double? scaleBorder;
  final Color? buttonColor;
  final Color? fontColor;
  final Color? roundedColor;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final double? fontSize;
  final Icon? icon;

  const WidgetCustomButton({
    super.key,
    this.text,
    this.scaleStroke,
    this.buttonColor,
    this.fontColor,
    this.roundedColor,
    this.fontWeight,
    this.scaleBorder,
    this.onPressed,
    this.fontSize,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: ButtonStyle(
        iconAlignment: IconAlignment.start,
        iconSize: WidgetStateProperty.all(24),
        iconColor: WidgetStateProperty.all(AppColors.white),
        side: WidgetStateProperty.all(
          BorderSide(
            width: scaleStroke ?? 2,
            color: buttonColor ?? AppColors.white,
          ),
        ),
        textStyle: WidgetStateProperty.all(
          TextStyle(color: roundedColor ?? AppColors.white),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(scaleBorder ?? 6),
          ),
        ),
      ),
      icon: icon,
      label: WidgetCustomText(
        text: text ?? "Button",
        color: AppColors.white,
        fontWeight: fontWeight ?? FontWeight.bold,
        size: fontSize ?? 16,
      ),
    );
  }
}
