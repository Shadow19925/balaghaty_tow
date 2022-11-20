
import 'package:balaghaty_tow/presentation/login/view/loginScreen.dart';
import 'package:balaghaty_tow/presentation/main/homeScreen.dart';
import 'package:balaghaty_tow/presentation/splash/splashScreen.dart';
import 'package:balaghaty_tow/resources/String_Manager.dart';
import 'package:balaghaty_tow/resources/appUsres.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../presentation/onboarding/view/onBoarding.dart';

class Routes {
  static const String splashRout = "/";
  static const String onBordingRout = '/OnbordingView';
  static const String loginRout = "/Login";
  static const String home = "/incidentRout";


}

class RouteGenerator {
  static Route<dynamic> getRouts(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      case Routes.splashRout:

        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBordingRout:
        return MaterialPageRoute(builder: (_) => const onBoardingView());
      case Routes.loginRout:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return unDefinedRout();
    }
  }

  static Route<dynamic> unDefinedRout() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
// todo :: should be not wrtten hard coded
              title: const Center(
                child: Text(StringManager.errorMessageOfwronRout),
              )),
          body: const Center(
            child: Text(StringManager.errorMessageOfwronRout),
          ),
        ));
  }
}
