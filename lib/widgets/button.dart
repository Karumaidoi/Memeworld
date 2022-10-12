import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final bool icon;
  final String title;
  final Icon iconImage;
  const ButtonWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: 45,
      width: MediaQuery.of(context).size.width * .7,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(.3),
          width: 1.4,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon == true ? iconImage : const SizedBox(),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
