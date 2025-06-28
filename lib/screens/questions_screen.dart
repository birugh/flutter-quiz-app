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
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WidgetCustomText(text: currentQuestion.question),
            SizedBox(height: 20),
            ...currentQuestion.answer.map((item) {
              return WidgetElevatedButton(text: item);
            }),
          ],
        ),
      ),
    );
  }
}
