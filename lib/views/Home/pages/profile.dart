import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/widgets/call_to_action.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Feather.settings,
              size: 22,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          const Icon(
            CupertinoIcons.person,
            size: 150,
          ),
          const SizedBox(height: 10),
          const Text('Log in to my account'),
          const SizedBox(height: 100),
          CtaButton(
              color: AppColors.appColors, text: 'LOG IN', callback: () {}),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Dont have an account yet?'),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: AppColors.appColors),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
