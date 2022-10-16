import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';

class NotifWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const NotifWidget({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 13,
        ),
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.black,
        radius: 17,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
          size: 17,
        ),
      ),
    );
  }
}
