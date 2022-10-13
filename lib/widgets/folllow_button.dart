import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback callback;
  const FollowButton(
      {super.key,
      required this.color,
      required this.text,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
