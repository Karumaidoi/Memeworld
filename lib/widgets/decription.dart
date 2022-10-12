import 'package:flutter/cupertino.dart';
import 'package:memeworld/const/app_colors.dart';

class TermsWidget extends StatelessWidget {
  final String text;
  const TermsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(CupertinoIcons.check_mark_circled),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(color: AppColors.appColors),
          ),
        ],
      ),
    );
  }
}
