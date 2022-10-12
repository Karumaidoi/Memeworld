import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/views/Auth/create_password.dart';

import '../../const/app_colors.dart';
import '../../widgets/call_to_action.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Whats your Gender?',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'This helps us find you more relevant content.We wont show it on your profile',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              height: 45,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                // border: Border.all(
                // color: Colors.black.withOpacity(.3),
                // width: 1.4,
                // ),
                color: AppColors.appColors,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text('Male'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              height: 45,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                // border: Border.all(
                // color: Colors.black.withOpacity(.3),
                // width: 1.4,
                // ),
                color: AppColors.buttonBackground,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text('Female'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              height: 45,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                // border: Border.all(
                // color: Colors.black.withOpacity(.3),
                // width: 1.4,
                // ),
                color: AppColors.buttonBackground,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text('Others'),
              ),
            ),
            const SizedBox(height: 70),
            CtaButton(
              color: AppColors.appColors,
              text: 'CONTINUE ',
              callback: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return const CreatePassword();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GendercontainerWidget extends StatelessWidget {
  final String text;
  final bool color;

  const GendercontainerWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: 45,
      width: MediaQuery.of(context).size.width * .7,
      decoration: BoxDecoration(
        // border: Border.all(
        // color: Colors.black.withOpacity(.3),
        // width: 1.4,
        // ),
        color: AppColors.appColors,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
