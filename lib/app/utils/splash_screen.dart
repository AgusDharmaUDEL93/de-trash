import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/lottie/splash.json',
                width: 0.6 * Get.size.width,
                height: 0.6 * Get.size.width,
              ),
            ),
            Positioned(
              bottom: Get.size.height * 0.1,
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
