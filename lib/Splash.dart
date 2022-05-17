import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen ({Key? key}) : super(key: key);

  @override
  State<SplashScreen > createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen > {

  //للانتقال
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/welcome_screen');
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26273B),
      body: Center(

        child: Center(
          child: Image.asset("assets/Logo.png"),
        ),
      ),
    );
  }
}
