import 'package:flutter/material.dart';

import '../components/custom_elevated_button.dart';
import '../components/custom_text.dart';
import '../data/questions.dart';

class WidgetQuestionMenu extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;

  const WidgetQuestionMenu({super.key, required this.onSelectAnswer});
  @override
  State<WidgetQuestionMenu> createState() => _WidgetQuestionMenuState();
}

class _WidgetQuestionMenuState extends State<WidgetQuestionMenu> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    setState(() {
      widget.onSelectAnswer(answer);
      // currentQuestionIndex = currentQuestionIndex + 1;
      // currentQuestionIndex += 1;
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WidgetCustomText(text: currentQuestion.question),
              SizedBox(height: 20),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return WidgetElevatedButton(
                  text: answer,
                  onPressed: () {
                    answerQuestion(answer);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
