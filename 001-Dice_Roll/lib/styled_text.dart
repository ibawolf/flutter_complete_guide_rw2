import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(ctx) {
    return Text(
      text,
      style: TextStyle(
        // fontFamily: 'Helvetica',
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
