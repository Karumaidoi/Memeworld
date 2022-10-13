import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/log_in.dart';
import 'package:memeworld/views/Auth/success_reset.dart';
import 'package:memeworld/widgets/call_to_action.dart';
import 'package:memeworld/widgets/textfield_widget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text(
              'Reset your password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 55),
              child: Text(
                'Strong passwords must include numbers, letters, and special characters.',
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 30),
            const TextFieldWidget(
                icon: false,
                title: 'Enter your new password',
                iconImage: Icon(Icons.abc)),
            const TextFieldWidget(
                icon: false,
                title: 'Repeat new password',
                iconImage: Icon(Icons.abc)),
            const Spacer(),
            CtaButton(
                color: AppColors.appColors,
                text: 'RESET PASSWORD',
                callback: () {
                  Navigator.of(context)
                      .pushReplacement(CupertinoPageRoute(builder: ((context) {
                    return const SuccesResetPage();
                  })));
                })
          ],
        ),
      ),
    );
  }
}
