import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/UI_Screens/background_video.dart';
import 'package:video_player/video_player.dart';

class GetXScreen extends StatefulWidget {
  const GetXScreen({super.key});

  @override
  State<GetXScreen> createState() => _GetXScreenState();
}

class _GetXScreenState extends State<GetXScreen> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("Ali Abbas", "Ali Abbas Congrets");

                  SnackPosition.BOTTOM;
                  BorderRadius.circular(522);
                },
                child: Text('Snack Bar')),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ));

                  SnackPosition.BOTTOM;
                  BorderRadius.circular(522);
                },
                child: Text('bottom sheets')),

            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(

                    title: "Ali Abbas",
                    radius: 55,
                    content: Row(children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 22,),
                      Expanded(child: Text("Please Wait"))
                    ],),
                    textCancel: "Cancel",
                    onCancel: (){},
                    textConfirm: "Confirm",
                    buttonColor: Colors.purpleAccent,
                    onConfirm: (){
                      Navigator.pop(context);

                    }
                  );

                
            
                },
                child: Text('Dialog Box')),

          ],
        ),
      ),
    );
  }
}
