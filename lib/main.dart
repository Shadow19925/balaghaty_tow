
import 'package:balaghaty_tow/presentation/splash/splashScreen.dart';
import 'package:balaghaty_tow/resources/routes_manager.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp()) ;
}

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance ;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      onGenerateRoute: RouteGenerator.getRouts,
      initialRoute: Routes.splashRout,
      home: SplashScreen(),
    );
  }
}
