import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';

class PasswordStrength extends StatelessWidget {
  const PasswordStrength({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Password strength:'),
            Text(
              'Strong',
              style: TextStyle(
                  color: AppColors.appColors, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.appColors,
              borderRadius: BorderRadius.circular(200)),
        )
      ],
    );
  }
}
