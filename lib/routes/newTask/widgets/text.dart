// Flutter imports:
import 'package:flutter/material.dart';

class StepTitle extends StatelessWidget {
  final String title;

  StepTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 100,
        decoration: TextDecoration.underline,
        fontFamily: 'Tomorrow',
      ),
    );
  }
}
