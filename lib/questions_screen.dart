import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/result_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key); // Widget in key özelliği

  @override
  State<StatefulWidget> createState() => _QuestionsState();
}

class _QuestionsState extends State<QuestionsScreen> {
  int questionNumber = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > questionNumber) {
        questionNumber++;
      } else {
        Navigator.push(
            context as BuildContext,
            MaterialPageRoute(
                builder: (context) => ResultScreen(onRestartQuiz: resetQuiz)));
      }
    }); // değişikliklerin ekrana da yansııtılması için gerekli
  }

  void resetQuiz() {
    setState(() {
      questionNumber = 0;
    });
  }

// Spread operatör ... nın tanımı
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 67, 97),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  questions[questionNumber].question,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                ...questions[questionNumber].answers.map((answer) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: changeQuestion,
                      child: Text(
                        answer,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        ));
  }
}
