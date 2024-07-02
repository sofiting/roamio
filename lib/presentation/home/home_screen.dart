import 'package:flutter/material.dart';
import 'package:roamio/config/const/app_const.dart';
import 'package:roamio/config/const/home_const.dart';
import 'package:roamio/presentation/home/widget/custom_appbar.dart';
import 'package:roamio/responsive/font_size_scaler.dart';
import 'package:roamio/responsive/hight_width_scaler.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String name = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      "assets/video/lanscape.mp4",
    )
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      })
      ..setLooping(true)
      ..setVolume(0.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    HightWidthScaler scaler = HightWidthScaler();
    scaler.init(context);
    double scaledFontSize(double baseFontSize) =>
        FontSizeScaler.calculateFontSize(context, baseFontSize);
    return Scaffold(
      appBar: CustomAppBar(
        baseFontSize: 15,
        appBarItemColor: appBarItemColor,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (_controller.value.isInitialized)
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              else
                const CircularProgressIndicator(),
              const SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    discover,
                    style: TextStyle(
                      fontSize: scaledFontSize(16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
