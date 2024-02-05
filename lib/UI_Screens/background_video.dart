import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class backVideo extends StatefulWidget {
  const backVideo({super.key});

  @override
  State<backVideo> createState() => _backVideoState();
}

class _backVideoState extends State<backVideo> {
  late final VideoPlayerController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller=VideoPlayerController.asset('assets/video/bk.mp4')..initialize().then((_){
      controller.play();
      controller.setLooping(true);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) =>
    VideoPlayer(controller);
  
}

