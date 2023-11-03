import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';

void main() {
  runApp(const MaterialApp(home: QuestionsScreen()));
}

//Stateless => Ekranda değişime uğramayacak, UI widget
//CRTL + .
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/resim.webp",
              width: 250,
            ),
            const Text(
              "Quiz App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start"),
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 247, 240, 219),
                  padding: EdgeInsets.all(12),
                  backgroundColor: Color.fromARGB(255, 56, 55, 55)),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QuestionsState();
}

class _QuestionsState extends State<QuestionsScreen> {
  int questionNumber = 0;

  void changeQuestion() {
    setState(() {
      questionNumber++;
    }); // değişikliklerin ekrana da yansııtılması için gerekli
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(questions[questionNumber].question),
          ...questions[questionNumber].answers.map((answer) {
            return ElevatedButton(
              onPressed: () {
                if (questionNumber < 3) {
                  changeQuestion();
                }
              },
              child: Text(answer),
            );
          })
        ],
      ),
    ));
  }
}
