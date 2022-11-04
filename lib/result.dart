import 'package:flutter/material.dart';

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
          ElevatedButton(
            onPressed: () => resetHandler(),
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange),
            child: const Text(
              'Restart Quiz!',
            ),
          ),
          // TextButton(
          //   style: TextButton.styleFrom(disabledForegroundColor: Colors.grey),
          //   onPressed: null,
          //   child: const Text("test"),
          // ),
          // OutlinedButton(
          //   onPressed: null,
          //   style: OutlinedButton.styleFrom(
          //       foregroundColor: Colors.orange,
          //       side: const BorderSide(color: Colors.orange)),
          //   child: const Text("test"),
          // ),
        ],
      ),
    );
  }
}
