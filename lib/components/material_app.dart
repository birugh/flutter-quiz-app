import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';
import 'package:quiz_app/screens/menu_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class WidgetMaterialApp extends StatefulWidget {
  const WidgetMaterialApp({super.key});

  @override
  State<WidgetMaterialApp> createState() => _WidgetMaterialAppState();
}

class _WidgetMaterialAppState extends State<WidgetMaterialApp> {
  String? activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = 'start-screen';
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'menu-screen';
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
    } else {
      screenWidget = WidgetMenuScreen();
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
