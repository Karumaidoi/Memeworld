import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memeworld/views/Auth/main_auth.dart';
import 'dart:math' as math;

import '../const/app_colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController? _pageController;
  List images = ['Chat.svg', 'Earn.svg', 'girl_sit.svg'];
  List titles = ['Share Memes', 'Share Smiles', 'Earn'];
  List subTitles = [
    'See new comments and reply right away',
    'See new comments and reply right away',
    'See new comments and reply right away'
  ];
  List sub = [
    'To our community where we LOL back everything.\n In all we stand firm as memeR community.\nExperience Great moments.',
    'Anytime with anyone from our community.\n Have a blast of all memes at a go, \nto cherish your moments.',
    'Join thousands of other premeium users.\n Monetize easily to earn smart.'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
          _pageController!.nextPage(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeIn);
        }
        if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
          _pageController!.previousPage(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeIn);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            controller: _pageController,
            itemBuilder: (_, index) {
              return SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        primary: true,
                        children: [
                          SizedBox(
                            height: screenHeight * 0.35,
                            child: SvgPicture.asset(
                              // ignore: prefer_interpolation_to_compose_strings
                              "assets/" + images[index],
                              height: 200,
                              width: 200,
                            ),
                          ),
                          const SizedBox(
                            height: 55,
                          ),
                          SizedBox(
                            height: 44,
                            child: Text(
                              titles[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                height: 1.3,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            child: Text(
                              subTitles[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.3,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(.5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.1,
                          ),
                          SizedBox(
                            height: 55,
                            child: Text(
                              sub[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                                height: 1.3,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Transform.rotate(
                            angle: 300,
                            child: Positioned(
                                right: 10,
                                top: 42,
                                child: Column(
                                  children: List.generate(3, (indexDots) {
                                    return Container(
                                      width: 8,
                                      height: index == indexDots ? 25 : 8,
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                          color: AppColors.appColors,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    );
                                  }),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 165,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    _pageController!.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => const MainAuth()));
                },
                child: const Text(
                  'GET STARTED',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    _pageController!.animateToPage(3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                  icon: const Icon(Icons.arrow_forward_ios)),
            ],
          ),
        ),
      ),
    );
  }
}
