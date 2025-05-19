import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yeeahnis_movie/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Image.asset("assets/images/app_logo.png"),
      ),
    );
  }
}
