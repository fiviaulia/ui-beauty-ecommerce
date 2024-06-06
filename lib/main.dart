import 'package:flutter/material.dart';
import 'package:urfioley/pages/SplashScreen.dart';
import 'package:urfioley/pages/HomePage.dart';

void main() => runApp(SkinCareApp());

class SkinCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 248, 248, 248),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
