import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/log_in.dart';
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
                Navigator.of(context)
                    .pushReplacement(CupertinoPageRoute(builder: (context) {
                  return const LogInScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
