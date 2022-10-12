import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/widgets/button.dart';
import 'package:memeworld/widgets/call_to_action.dart';
import 'package:memeworld/widgets/divider.dart';
import 'package:memeworld/widgets/textfield_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close)),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Log in to Memeworld',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 60,
            ),
            const ButtonWidget(
              icon: true,
              iconImage: Icon(
                Zocial.facebook,
                size: 17,
              ),
              title: 'Continue with Facebook',
            ),
            const ButtonWidget(
              icon: true,
              iconImage: Icon(
                Zocial.googleplus,
                size: 17,
              ),
              title: 'Continue with Google',
            ),
            const SizedBox(height: 10),
            const DividerWidget(),
            const SizedBox(height: 30),
            const TextFieldWidget(
                icon: false,
                title: 'Phone, email or username',
                iconImage: Icon(Icons.abc)),
            const SizedBox(height: 0),
            const TextFieldWidget(
                icon: true,
                title: 'Password',
                iconImage: Icon(Icons.remove_red_eye_outlined)),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password',
                        style: TextStyle(color: AppColors.appColors),
                      )),
                ],
              ),
            ),
            CtaButton(color: AppColors.appColors, text: 'LOG IN'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Don\'t have an account yet?'),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: AppColors.appColors,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
