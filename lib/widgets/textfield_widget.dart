import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool icon;
  final String title;
  final Icon iconImage;
  const TextFieldWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
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
      child: TextFormField(
        obscureText: icon,
        // obsecureText: icon,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: icon == true ? iconImage : null,
          hintText: title,
          hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
    );
  }
}


