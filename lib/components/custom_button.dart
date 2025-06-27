import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';

class WidgetCustomButton extends StatefulWidget {
  final String? text;
  final double? scaleStroke;
  final double? scaleBorder;
  final Color? buttonColor;
  final Color? fontColor;
  final Color? roundedColor;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final double? fontSize;

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
  });

  @override
  State<WidgetCustomButton> createState() => _WidgetCustomButtonState();
}

class _WidgetCustomButtonState extends State<WidgetCustomButton> {
  OutlinedButton CustomOutlinedButton() {
    return OutlinedButton(
      onPressed: widget.onPressed ?? null,
      child: Text(
        widget.text ?? "Button",
        style: TextStyle(
          color: AppColors.white,
          fontWeight: widget.fontWeight ?? FontWeight.w600,
          fontSize: widget.fontSize ?? 16,
        ),
      ),
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          BorderSide(
            width: widget.scaleStroke ?? 3,
            color: widget.buttonColor ?? AppColors.white,
          ),
        ),
        textStyle: WidgetStateProperty.all(
          TextStyle(color: widget.roundedColor ?? AppColors.white),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.scaleBorder ?? 10),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton();
  }
}
