import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../Auth/main_auth.dart';

// import 'main_home.dart';

String? city;

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  bool isLogIn = false;

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Share memes',
          body: 'See new comments and reply right away.',
          image: SvgPicture.asset(
            'assets/Messaging fun-bro.svg',
            height: 280,
            width: 250,
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Share Smiles',
          body: 'See new comments and reply right away.',
          image: SvgPicture.asset(
            'assets/Messaging fun-pana.svg',
            height: 280,
            width: 250,
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Earn.',
          body: 'See new comments and reply right away.',
          image: SvgPicture.asset(
            'assets/Smiley face-amico.svg',
            height: 280,
            width: 250,
          ),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text('Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.orange.shade700,
          )),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text(
        'Skip',
        style: TextStyle(color: Colors.orange.shade700),
      ),
      onSkip: () => goToHome(context),
      next: Icon(
        Icons.arrow_forward_ios,
        color: Colors.orange.shade700,
      ),
      dotsDecorator: getDotDecoration(),
      globalBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      nextFlex: 0,
      isProgressTap: true,
      isProgress: true,
      showNextButton: false,
      freeze: false,
      // animationDuration: 1000,
    );
  }

  void goToHome(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MainAuth()),
    );
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Theme.of(context).buttonColor,
        activeColor: Colors.orange,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            height: 1.3,
            color: Colors.black),
        bodyTextStyle:
            TextStyle(fontSize: 14, height: 1.4, color: Colors.black),
        // descriptionPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
