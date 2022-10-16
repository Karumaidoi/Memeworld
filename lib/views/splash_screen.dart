import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/onboarding/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
              builder: (BuildContext context) => const OnBoarding()));
    });
    return Scaffold(
      backgroundColor: AppColors.appColors,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SvgPicture.asset('assets/memeworld.svg', height: 220, width: 220,),
            Center(
              child: Image.asset(
                'assets/memeworld.png',
                height: 180,
                width: 180,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Memeworld',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                wordSpacing: 1.3,
              ),
            )
          ]),
    );
  }
}
