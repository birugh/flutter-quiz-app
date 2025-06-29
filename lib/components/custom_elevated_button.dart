import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'custom_text.dart';

class WidgetElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final double? width;
  final Icon? icon;
  const WidgetElevatedButton({
    super.key,
    this.onPressed,
    this.text,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: width ?? double.infinity,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ButtonStyle(
            iconAlignment: IconAlignment.start,
            iconSize: WidgetStateProperty.all(24),
            iconColor: WidgetStateProperty.all(AppColors.white),
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
          icon: icon ?? null,
          label: WidgetCustomText(text: text, color: AppColors.white, size: 16),
        ),
      ),
    );
  }
}
