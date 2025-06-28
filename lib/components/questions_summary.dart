import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_text.dart';

class WidgetQuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const WidgetQuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                WidgetCustomText(
                  text: ((data['question_index'] as int) + 1).toString(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      WidgetCustomText(
                        text: (data['question'] as String).toString(),
                      ),
                      WidgetCustomText(
                        text: (data['correct_answer'] as String).toString(),
                      ),
                      WidgetCustomText(
                        text: (data['your_answer'] as String).toString(),
                      ),
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
