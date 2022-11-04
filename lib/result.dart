import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyFlatButton.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  const Result(
      {required this.resultScore, required this.resetHandler, super.key});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are... strange?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          LegacyFlatButton(
            onPressed: () => resetHandler(),
            textColor: Colors.white,
            color: Colors.orange,
            child: const Text(
              'Restart Quiz!',
            ),
          ),
        ],
      ),
    );
  }
}
