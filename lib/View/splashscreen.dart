import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/Controller/splashscreencontroller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: Image.asset(
                'assets/images/Logo.png',
              ),
            ),
          ),

          // Eclipse Image
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset('assets/images/Ellipse 1.png'),
          )
        ],
      ),
    );
  }
}
