import 'package:flutter/material.dart';
import 'package:quiz_app/components/app_colors.dart';

class WidgetMaterialApp extends StatefulWidget {
  final Widget widgetScreen;
  const WidgetMaterialApp({super.key, required this.widgetScreen});

  @override
  State<WidgetMaterialApp> createState() => _WidgetMaterialAppState();
}

class _WidgetMaterialAppState extends State<WidgetMaterialApp> {
  @override
  Widget build(BuildContext context) {
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
          child: widget.widgetScreen,
        ),
      ),
    );
  }
}
