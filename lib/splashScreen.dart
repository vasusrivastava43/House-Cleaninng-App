import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  VideoPlayerController? controller ;
  final assets = 'asset/image/intronew.mp4';
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(assets)..initialize().then((_){
      setState(() {

      });
      controller!.setLooping(false);
      controller!.play();
      controller!.setVolume(5.5);
    });
    Timer(Duration(seconds: 6), () {
      Navigator.pushNamed(context, '/front');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      fit: StackFit.expand,children: [
      Container(
        child: AspectRatio(aspectRatio: controller!.value.aspectRatio,
        child: VideoPlayer(controller!),),
      )
    ],
    ),


    );
  }
}
