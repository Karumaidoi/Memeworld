import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Home/main_home.dart';
import 'package:memeworld/widgets/call_to_action.dart';

class SuccesResetPage extends StatelessWidget {
  const SuccesResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            const Center(
                child: Text(
              'You\'ve successfully reset your \n password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
            CtaButton(
              color: AppColors.appColors,
              text: 'Continue to Memeworld',
              callback: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        content: const Text(
                          'By tapping "Agree & Continue", you agree to our Terms of Service and acknowledge that you have read our Privacy policy to learn how we collect, use and share your data',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        actions: [
                          CupertinoButton(
                              child: const Text(
                                'Agree and Continue',
                                style: TextStyle(
                                    fontSize: 13, fontFamily: 'Nunito'),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) {
                                  return const MainHome();
                                }));
                              })
                        ],
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
