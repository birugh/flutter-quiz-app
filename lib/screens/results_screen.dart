import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_elevated_button.dart';
import 'package:quiz_app/components/custom_text.dart';
import 'package:quiz_app/data/questions.dart';

class WidgetResultsScreen extends StatelessWidget {
  final List<String> chosenAnswer;

  const WidgetResultsScreen({super.key, required this.chosenAnswer});

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i],
        'correct_answer': questions[i].answer[0],
        'your_answer': chosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidgetCustomText(
            text: 'You answered X out of Y questions correctly!',
          ),
          SizedBox(height: 20),
          Row(
            children: [
              WidgetCustomText(text: 'Question Index'),
              Column(
                children: [
                  WidgetCustomText(text: 'Question'),
                  WidgetCustomText(text: 'Correct Answer'),
                  WidgetCustomText(text: 'Your Answer'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          WidgetElevatedButton(
            text: 'Restart Quiz!',
            onPressed: () {},
            width: 120,
          ),
        ],
      ),
    );
  }
}
