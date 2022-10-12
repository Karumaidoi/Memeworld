import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/log_in.dart';
import 'package:memeworld/widgets/button.dart';

class MainAuth extends StatelessWidget {
  const MainAuth({super.key});

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
              'Sign up for Memeworld',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 80,
            ),
            const ButtonWidget(
              icon: false,
              iconImage: Icon(Icons.abc),
              title: 'Use phone or email',
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
            const SizedBox(height: 55),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: Text(
                'By signing up, you agree to our Terms of service and acknowledge that you have read our Privacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.5)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(CupertinoPageRoute(builder: (context) {
                        return const LogInScreen();
                      }));
                    },
                    child: Text(
                      'Log in',
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
