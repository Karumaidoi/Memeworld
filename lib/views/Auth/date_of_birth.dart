import 'package:flutter/material.dart';
import 'package:memeworld/views/Auth/gender.dart';

import '../../const/app_colors.dart';
import '../../widgets/call_to_action.dart';
import '../../widgets/textfield_widget.dart';

class DateOfBirth extends StatelessWidget {
  const DateOfBirth({super.key});

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
              'Date of birth',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Your birthday wont be shown publicly.confirm it, even if this account is for business',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                print('Hello');
              },
              child: const TextFieldWidget(
                  icon: false,
                  title: 'Apr 20, 1998',
                  iconImage: Icon(Icons.abc)),
            ),
            const SizedBox(height: 70),
            CtaButton(
              color: AppColors.appColors,
              text: 'CONTINUE ',
              callback: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Gender()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
