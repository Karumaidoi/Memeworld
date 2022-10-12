import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/interests.dart';
import 'package:memeworld/widgets/call_to_action.dart';
import 'package:memeworld/widgets/decription.dart';
import 'package:memeworld/widgets/password_strength.dart';

class CreateUsername extends StatelessWidget {
  const CreateUsername({super.key});

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
              'Create username',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'You can always change it later',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
            ),
            const TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(CupertinoIcons.check_mark_circled),
              ),
            ),
            const SizedBox(height: 150),
            Align(
              alignment: Alignment.center,
              child: CtaButton(
                  color: AppColors.appColors,
                  text: 'SIGN UP',
                  callback: () {
                    Navigator.of(context)
                        .pushReplacement(CupertinoPageRoute(builder: (context) {
                      return const InterestsPage();
                    }));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
