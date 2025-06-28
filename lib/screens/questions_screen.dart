import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_elevated_button.dart';
import 'package:quiz_app/components/custom_text.dart';
import 'package:quiz_app/data/questions.dart';

class WidgetMenuScreen extends StatefulWidget {
  const WidgetMenuScreen({super.key});

  @override
  State<WidgetMenuScreen> createState() => _WidgetMenuScreenState();
}

class _WidgetMenuScreenState extends State<WidgetMenuScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[1];
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
              ...currentQuestion.getShuffledAnswers().map((item) {
                return WidgetElevatedButton(text: item, onPressed: () {});
              }),
            ],
          ),
        ),
      ),
    );
  }
}
