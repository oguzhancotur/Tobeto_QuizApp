import 'package:flutter/material.dart';
import 'package:flutter_application_1/start_screen.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback onRestartQuiz;

  ResultScreen({required this.onRestartQuiz});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 67, 97),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Quiz is finished !",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartScreen(() {})),
                  );
                },
                child: Text("HomePage"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
