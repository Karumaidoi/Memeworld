import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final String text;
  final Icon icon;
  const ActionWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        const SizedBox(
          width: 3,
        ),
        Text(text)
      ],
    );
  }
}
