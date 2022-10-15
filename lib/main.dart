import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memeworld/const/app_colors.dart';

import 'views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Memeworld',
      theme: ThemeData(
        // platform: TargetPlatform.,
        fontFamily: 'Nunito',
        useMaterial3: true,
        primaryColor: AppColors.appColors,
      ),
      home: const SplashScreen(),
    );
  }
}
