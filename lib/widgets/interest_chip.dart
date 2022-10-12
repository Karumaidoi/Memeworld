import 'package:flutter/material.dart';

class InterestChip extends StatelessWidget {
  final String text;
  const InterestChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      label: Text(
        text,
        style: const TextStyle(fontSize: 13),
      ),
    );
  }
}
