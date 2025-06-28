import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/results_screen.dart';

import '../screens/questions_screen.dart';
import '../screens/start_screen.dart';
import 'app_colors.dart';

class WidgetMaterialApp extends StatefulWidget {
  const WidgetMaterialApp({super.key});

  @override
  State<WidgetMaterialApp> createState() => _WidgetMaterialAppState();
}

class _WidgetMaterialAppState extends State<WidgetMaterialApp> {
  List<String> selectedAnswer = [];
  String? activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = 'start-screen';
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidget = activeScreen == 'start-screen'
    //     ? WidgetStartScreen(startQuiz: switchScreen)
    //     : WidgetMenuScreen();

    Widget? screenWidget;
    if (activeScreen == 'start-screen') {
      screenWidget = WidgetStartScreen(startQuiz: switchScreen);
    } else if (activeScreen == 'results-screen') {
      screenWidget = WidgetResultsScreen(
        chosenAnswer: selectedAnswer,
        restartQuiz: restartQuiz,
      );
    } else {
      screenWidget = WidgetQuestionMenu(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      title: 'Flutter Quiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.purple),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.purpleDark, AppColors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
