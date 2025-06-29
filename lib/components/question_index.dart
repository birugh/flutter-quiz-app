import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';
import 'package:quiz_app/components/custom_text.dart';

class WidgetQuestionIndex extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  const WidgetQuestionIndex({super.key, this.text, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? AppColors.white,
        shape: BoxShape.circle,
      ),
      width: size,
      height: size,
      alignment: Alignment.center,
      child: WidgetCustomText(text: text, color: Colors.black),
    );
  }
}
