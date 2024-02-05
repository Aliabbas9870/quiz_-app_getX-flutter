

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/UI_Screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1721AB),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 56,),
              Container(
                width: 233, 
                height: 233,
                child: ClipRRect(
                  
                  borderRadius: BorderRadius.circular(84),
                  child: Image(image: AssetImage('assets/images/mypic.jpg')),
                ),
              ),
                  SizedBox(height: 22,),
              Center(
                  child: Text(
                "Welcome  online Quiz",
                style: TextStyle(
                    fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
              )),
          
            ],
          ),
        ),
      ),
    );
  }
}
