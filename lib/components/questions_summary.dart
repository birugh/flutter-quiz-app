import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';
import 'package:quiz_app/components/custom_text.dart';
import 'package:quiz_app/components/question_index.dart';

class WidgetQuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const WidgetQuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var correctAnswer = (data['correct_answer'] as String).toString();
            var yourAnswer = (data['your_answer'] as String).toString();
            Color? colorAnswer;

            if (correctAnswer == yourAnswer) {
              colorAnswer = AppColors.robinEggBlue;
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WidgetQuestionIndex(
                  size: 38,
                  color: colorAnswer ?? AppColors.ultraPink,
                  text: ((data['question_index'] as int) + 1).toString(),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WidgetCustomText(
                        size: 20,
                        align: TextAlign.left,
                        color: AppColors.white,
                        text: (data['question'] as String).toString(),
                      ),
                      SizedBox(height: 4),
                      WidgetCustomText(
                        size: 18,
                        align: TextAlign.left,
                        color: const Color.fromARGB(255, 30, 255, 0),
                        text:
                            "Correct Answer: " +
                            (data['correct_answer'] as String).toString(),
                        fontWeight: FontWeight.w600,
                      ),
                      WidgetCustomText(
                        size: 18,
                        align: TextAlign.left,
                        color: AppColors.robinEggBlue,
                        text:
                            "Your Answer: " +
                            (data['your_answer'] as String).toString(),
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 6),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
