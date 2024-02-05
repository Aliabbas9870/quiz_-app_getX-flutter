import 'package:flutter/material.dart';
import 'package:quizapp/UI_Screens/Quiz_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<String> languageName = [
    "Pyton",
    "Java",
    "JavaScript",
    "C++",
    "HTML",
  ];

  List<String> Images = [
    'assets/images/py.png',
    'assets/images/java.png',
    'assets/images/js.png',
    'assets/images/cP.png',
    'assets/images/html.png'
  ];

  List<String> Description = [
    "Hello Dear! Pyton is the most popular language  which is a widely used programming language.",
    "Hello Dear! Java is the most popular language  which is a widely used programming language.",

    "Hello Dear! Js typically refers to JavaScript, which is a widely used programming language."
    " JavaScript is primarily known for its role in web development, ",

    "Hello Dear! C++ is the most popular language  which is a widely used programming language.",
    "Hello Dear! HTML is the most popular language  which is a widely used programming language.",
  ];

  Widget customCard(String languageName, String Images, String Description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 29.0, horizontal: 20),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizScreen()));
        },
        child: Material(
          color: Color(0xff1721AB),
          elevation: 10.0,
          borderRadius: BorderRadius.circular(12),
          child: Container(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(82),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(83)
                    ),
                    width: 130.0,
                    height: 130.0,
                    child: ClipOval(
                      
                      child: Image(image: AssetImage(Images)),
                    ),
                  ),
                ),
              ),
              Center(
                  child: Text(
                languageName,
                style: TextStyle(
                    fontSize: 29,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                      child: Text(
                    Description,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1721AB),
        centerTitle: true,
        title: Text('Quiz',  style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          customCard(languageName[0], Images[0], Description[0]),
          SizedBox(
            height: 12,
          ),
          customCard(languageName[1], Images[1], Description[1]),
          SizedBox(
            height: 12,
          ),
          customCard(languageName[2], Images[2], Description[2]),
          SizedBox(
            height: 12,
          ),
          customCard(languageName[3], Images[3], Description[3]),
          SizedBox(
            height: 12,
          ),
          customCard(languageName[4], Images[4], Description[4]),
        ],
      ),
    );
  }
}
