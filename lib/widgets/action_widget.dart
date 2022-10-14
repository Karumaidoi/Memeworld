import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback callback;
  const ActionWidget(
      {super.key,
      required this.text,
      required this.icon,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            width: 3,
          ),
          Text(text)
        ],
      ),
    );
  }
}
