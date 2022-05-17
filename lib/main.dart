import 'dart:async';

import 'package:activity4/SignIn.dart';
import 'package:activity4/Splash.dart';
import 'package:activity4/Welcome.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen':(context)=>const SplashScreen(),
        '/welcome_screen':(context)=>const Welcome(),
        '/signin_screen':(context)=>SignIn(),
        '/main_screen':(context)=>const MainScreen(),


      },
    );

  }
}




