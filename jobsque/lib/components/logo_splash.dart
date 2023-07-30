import 'package:flutter/material.dart';

class LogoSplash extends StatelessWidget {
  const LogoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/jobsque_logo.png",
      width: 200,
      height: 200,
    );
  }
}
