import 'package:flutter/material.dart';
import 'package:quiz_app/components/custom_elevated_button.dart';
import 'package:quiz_app/components/custom_text.dart';

class WidgetMenuScreen extends StatefulWidget {
  const WidgetMenuScreen({super.key});

  @override
  State<WidgetMenuScreen> createState() => _WidgetMenuScreenState();
}

class _WidgetMenuScreenState extends State<WidgetMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          WidgetCustomText(text: 'Question 1'),
          SizedBox(height: 20),
          WidgetElevatedButton(),
          WidgetElevatedButton(),
          WidgetElevatedButton(),
          WidgetElevatedButton(),
        ],
      ),
    );
  }
}
