

import 'package:balaghaty_tow/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../../resources/assete_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation? FadingAnimation;

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  void _goToOnbording() async {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.onBordingRout);
    });
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    FadingAnimation =
        Tween<double>(begin: 0.1, end: 1).animate(animationController!);
    animationController!.forward(from: 0.1);


    _goToOnbording();
  }

  @override
  Widget build(BuildContext context) {
    Size_config().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor:color_manager.background,
        body: Column(
          // mainAxisAlignment: M,
          children: <Widget>[
            // Expanded(child: Spacer()),

            Spacer(),
            Expanded(
              child: Center(
                child: AnimatedBuilder(
                  animation: FadingAnimation!,
                  builder: (context, _) => Opacity(
                      opacity: FadingAnimation!.value,
                      child: Image.asset(AsseteManager.sp1)),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
