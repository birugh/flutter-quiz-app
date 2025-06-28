import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_text.dart';

class WidgetQuestionsSummary extends StatefulWidget {
  final List<Map<String, Object>> summaryData;

  const WidgetQuestionsSummary({super.key, required this.summaryData});

  @override
  State<WidgetQuestionsSummary> createState() => _WidgetQuestionsSummaryState();
}

class _WidgetQuestionsSummaryState extends State<WidgetQuestionsSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.summaryData.map((data) {
          return Row(
            children: [
              WidgetCustomText(
                text: ((data['question_index'] as int) + 1).toString(),
              ),
            ],
          );
        }),
      ].toList(),
    );
  }
}
