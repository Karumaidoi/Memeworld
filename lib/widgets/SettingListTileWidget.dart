import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';

class SettingsListTile extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback callback;
  const SettingsListTile(
      {super.key,
      required this.text,
      required this.icon,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: callback,
        leading: icon,
        title: Text(text),
        selectedColor: AppColors.appColors,
      ),
    );
  }
}
