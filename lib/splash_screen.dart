import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:holyquranapplication/index.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
          'assets/quran.png'),
      title: Text(
        "إِنَّا نَحْنُ نَزَّلْنَا ٱلذِّكْرَ وَإِنَّا لَهُۥ لَحَٰفِظُونَ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.yellow.withOpacity(0.5),
      showLoader: true,
      navigator: IndexPage(),
      durationInSeconds: 5,
    );
  }
}





