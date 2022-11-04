import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyRaisedButton.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: LegacyRaisedButton(
          onPressed: selectHandler,
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText)),
    );
  }
}
