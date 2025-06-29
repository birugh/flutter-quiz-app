import 'dart:io';

import 'package:flutter/material.dart';
import '../components/custom_outlined_button.dart';
import '../components/custom_text.dart';

class WidgetStartScreen extends StatefulWidget {
  const WidgetStartScreen({required this.startQuiz, super.key});

  final void Function() startQuiz;

  @override
  State<WidgetStartScreen> createState() => _WidgetStartScreenState();
}

class _WidgetStartScreenState extends State<WidgetStartScreen> {
  void exitButton() {
    exit(0);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset('assets/images/quiz-logo.png', width: 250),
          ),
          const SizedBox(height: 50),
          WidgetCustomText(text: 'Learn Flutter the fun way!'),
          const SizedBox(height: 20),
          WidgetCustomButton(
            onPressed: widget.startQuiz,
            text: 'Start Quiz',
            icon: const Icon(Icons.keyboard_arrow_right_rounded),
          ),
          WidgetCustomButton(
            onPressed: exitButton,
            text: 'Exit',
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}
