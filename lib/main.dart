import 'package:flutter/material.dart';
import 'package:holyquranapplication/splash_screen.dart';
import 'constant.dart';
import 'index.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding
        .instance
        .addPostFrameCallback(

            (_) async{
          await readJson();
          await getSettings();
        }



    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        // '/': (context) => SplashFuturePage(),
        '/home': (context) => IndexPage(),
      },
      title: 'Quran',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}