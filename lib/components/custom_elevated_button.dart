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
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: width ?? double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.purpleVeryDark),
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
              ),
            ),
          ),
          child: WidgetCustomText(text: text, color: AppColors.white, size: 16),
        ),
      ),
    );
  }
}
