import 'package:flutter/material.dart';

class WidgetCustomButton extends StatefulWidget {
  const WidgetCustomButton({super.key});

  @override
  State<WidgetCustomButton> createState() => _WidgetCustomButtonState();
}

class _WidgetCustomButtonState extends State<WidgetCustomButton> {
  OutlinedButton CustomOutlinedButton() {
    return OutlinedButton(
      onPressed: () {
        //
      },
      child: Text(
        'Start Quiz',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          BorderSide(width: 2, color: Colors.white),
        ),
        textStyle: WidgetStateProperty.all(TextStyle(color: Colors.white)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton();
  }
}
