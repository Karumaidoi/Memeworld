import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: Colors.grey.withOpacity(.1),
          border: Border.all(width: 1, color: Colors.grey.withOpacity(.2))),
      child: Center(
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            width: 15,
          ),
          const SizedBox(
            width: 6,
          ),
          SizedBox(
            width: 120,
            child: TextField(
                onTap: () {},
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500))),
          )
        ]),
      ),
    );
  }
}
