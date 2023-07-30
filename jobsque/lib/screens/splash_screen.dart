import 'package:flutter/material.dart';
import 'package:jobsque/components/logo_splash.dart';
import 'package:jobsque/screens/onboarding_screen.dart';
import 'package:jobsque/utils/navigation_util.dart';
import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4)).then(
      (value) {
        NavigationUtils.goTo(context, const ObScreen());
      },
    );

    return Scaffold(
      body: Center(
        child: Material(
          // Replace this child with your own

          shape: const CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            radius: 40.0,
            child: RippleAnimation(
                color: Colors.blueAccent,
                duration: const Duration(seconds: 3),
                repeat: true,
                ripplesCount: 3,
                minRadius: 120,
                size: const Size(120, 120),
                child: const LogoSplash()),
          ),
        ),
      ),
    );
  }
}
