import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizapp/GetX/FirstGetX.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> languageName = [
    "Python",
    "Java",
    "JavaScript",
    "C++",
    "HTML",
  ];

  int selectedIndex = -1;
  int remainingTime = 30;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (remainingTime > 0) {
          remainingTime--;
        } else {
          // Timer reached zero, you can handle this event
          t.cancel(); // Stop the timer
        }
      });
    });
  }

  void resetTimer() {
    setState(() {
      remainingTime = 30;
    });
    timer.cancel(); // Stop the previous timer
    startTimer(); // Start a new timer
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz',
          style: TextStyle(
            fontSize: 21,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                 TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GetXScreen()));
            },
            child: Text('GetX Screens'),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Which one is the best language for Baginers?',
              style: TextStyle(
                fontSize: 21,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 18),
          buildContainer(0),
          SizedBox(height: 11),
          buildContainer(1),
          SizedBox(height: 11),
          buildContainer(2),
          SizedBox(height: 11),
          buildContainer(3),
          SizedBox(height: 40),
          Text(
            'Remaining: $remainingTime seconds',
            style: TextStyle(
              fontSize: 19,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        
   
        ],
      ),
    );
  }

  Widget buildContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index == selectedIndex ? -1 : index;
        });
        resetTimer(); // Reset the timer when a container is tapped
      },
      child: Center(
        child: Container(
          width: 222,
          child: Center(
            child: Text(
              languageName[index],
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: index == selectedIndex ? Colors.green : Color(0xff1721AB),
          ),
        ),
      ),
    );
  }
}
