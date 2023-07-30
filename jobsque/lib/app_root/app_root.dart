import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:jobsque/screens/bottom_nav_bar_button.dart';
// import 'package:jobsque/screens/home_screen.dart';
import 'package:jobsque/screens/splash_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      // home: ,
    );
  }
}
