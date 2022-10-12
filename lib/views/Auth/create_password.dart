import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/create_username.dart';
import 'package:memeworld/widgets/call_to_action.dart';
import 'package:memeworld/widgets/decription.dart';
import 'package:memeworld/widgets/password_strength.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Create password',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const TextField(),
            const SizedBox(height: 20),
            const Text(
              'Your password must have:',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const TermsWidget(text: '8 to 20 characters'),
            const TermsWidget(
                text: 'Can contain letters, numbers and \n special characters'),
            const SizedBox(
              height: 15,
            ),
            const PasswordStrength(),
            const SizedBox(
              height: 55,
            ),
            Align(
              alignment: Alignment.center,
              child: CtaButton(
                  color: AppColors.appColors,
                  text: 'CONTINUE',
                  callback: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return const CreateUsername();
                    }));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
