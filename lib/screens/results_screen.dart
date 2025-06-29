import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_elevated_button.dart';
import 'package:quiz_app/components/custom_text.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/data/questions.dart';

class WidgetResultsScreen extends StatelessWidget {
  final List<String> chosenAnswer;

  final void Function() restartQuiz;
  final void Function() goHome;

  const WidgetResultsScreen({
    super.key,
    required this.chosenAnswer,
    required this.restartQuiz,
    required this.goHome,
  });

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      print('Q: ${questions[i].question}');
      print('A: ${questions[i].answer[0]}');
      print('Your A: ${chosenAnswer[i]}');
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answer[0],
        'your_answer': chosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectAnswer = summaryData.where((data) {
      return data['your_answer'] == data['correct_answer'];
    }).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidgetCustomText(
            text:
                'You answered $numCorrectAnswer out of $numTotalQuestion questions correctly!',
          ),
          SizedBox(height: 20),
          WidgetQuestionsSummary(summaryData: getSummaryData()),
          SizedBox(height: 20),
          WidgetElevatedButton(
            text: 'Restart Quiz!',
            onPressed: () {
              // TODO
              restartQuiz();
            },
            width: 140,
          ),
          WidgetElevatedButton(
            text: 'Back',
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              // TODO
              goHome();
            },
            width: 100,
          ),
        ],
      ),
    );
  }
}
