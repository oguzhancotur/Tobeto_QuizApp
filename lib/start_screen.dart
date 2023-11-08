import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 67, 97),
      appBar: AppBar(
        actions: [Icon(Icons.access_alarm)],
        backgroundColor: Color.fromARGB(255, 219, 38, 38),
        title: const Text(
          "Welcome",
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz2.png",
              width: 250,
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "Let's Go !",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 2, 2),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionsScreen()),
                );
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start"),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.all(12),
                  backgroundColor: Color.fromARGB(255, 204, 31, 31)),
            ),
          ],
        ),
      ),
    );
  }
}
