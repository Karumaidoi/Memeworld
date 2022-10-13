import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/reset_password.dart';
import 'package:memeworld/widgets/call_to_action.dart';
import 'package:memeworld/widgets/textfield_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            Text(
              'Forgot Password',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appColors),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Please enter your e-mail address You will receive a link to create a new password via e-mail',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const TextFieldWidget(
                icon: false, title: 'Enter Email', iconImage: Icon(Icons.abc)),
            const SizedBox(height: 20),
            CtaButton(
                color: AppColors.appColors,
                text: 'SEND',
                callback: () {
                  Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (context) {
                    return const ResetPassword();
                  }));
                })
          ],
        ),
      ),
    );
  }
}
