import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/model/user.dart';

class AvatarWidget extends StatelessWidget {
  final String image;
  final String text;
  final User user;
  final VoidCallback callback;
  const AvatarWidget(
      {super.key,
      required this.image,
      required this.text,
      required this.user,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30,
              child: CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(image),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStoryWidget extends StatelessWidget {
  const MyStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.appColors,
                radius: 30,
                child: const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    CupertinoIcons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  CupertinoIcons.add_circled_solid,
                  color: Colors.white,
                  size: 20,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'My Story',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
