import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/widgets/folllow_button.dart';

class FollowWidget extends StatelessWidget {
  final String name;
  final String userName;
  const FollowWidget({super.key, required this.name, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 170,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black.withOpacity(.1),
            child: const Icon(
              CupertinoIcons.person,
              color: Colors.black,
              size: 33,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            userName,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          FollowButton(
              color: AppColors.appColors, text: 'Follow', callback: () {})
        ],
      ),
    );
  }
}
