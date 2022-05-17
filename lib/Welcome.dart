import 'dart:ffi';

import 'package:activity4/SignIn.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/back1.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/Logo.png',
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/signin_screen'),
                  child: const Text('Sign In'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    minimumSize: Size(300, 60),
                    primary: Color(0xFFE3523F),

                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

              ElevatedButton(
                onPressed: () {

                },
                child: const Text('Sign Up'),
                style: ElevatedButton.styleFrom(

                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  minimumSize: Size(300, 60),
                  primary: Color(0xFF26273B),
                  shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white))
                ),
              )
              ],

            ),
          )  ,
        ],
      ),
    );
  }
}
