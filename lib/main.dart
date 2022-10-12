import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';

import 'views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meme world',
      theme: ThemeData(
        fontFamily: 'Nunito',
        useMaterial3: true,
        primaryColor: AppColors.appColors,
      ),
      home: const SplashScreen(),
    );
  }
}
