import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_screen.dart';
import 'package:flutter_application_1/start_screen.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  var _activeScreenName = "start-screen";
  void changeScreen() {
    setState(() {
      _activeScreenName = "quiz-screen";
    });
  }
  //Callback bir fonksiyonun geriye cagırdıgı fonksiyon.
  //Değişkenleri basit türde olmalıdır diye düşünmeyin widget da tutabiliriz.

  //Sorular bittiğinde resultscreen acılmalıdır. Cevaplanan sorular listelenmelidir.(liste widgetları)
  //ResultScreen olusturulması
  //QuestionScreen den soruların bittiğime dair callback alınması
  //ResultScreen'in gösterilmesi
  //Verilen cevaplar hafızada tutulup şu soruya şu cevap verdiniz şeylinde resultScreen şeklinde listeleyiniz(zor)
  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(changeScreen);

    if (_activeScreenName == "quiz-screen") {
      activeScreen = QuestionsScreen();
    }
    return Container(child: activeScreen);
  }
}
