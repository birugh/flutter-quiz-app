import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';
import 'package:quiz_app/components/custom_text.dart';

class WidgetElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final double? width;
  const WidgetElevatedButton({
    super.key,
    this.onPressed,
    this.text,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 300,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.purpleVeryDark),
        ),
        child: WidgetCustomText(text: text, color: AppColors.white, size: 16),
      ),
    );
  }
}
