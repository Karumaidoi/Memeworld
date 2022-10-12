import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .3,
            height: 1,
            color: Colors.black.withOpacity(.4),
          ),
          const Spacer(),
          const Text('or'),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * .3,
            height: 1,
            color: Colors.black.withOpacity(.4),
          ),
        ],
      ),
    );
  }
}
