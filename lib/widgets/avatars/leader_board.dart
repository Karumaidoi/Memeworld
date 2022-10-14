import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LeaderBoardAvatar extends StatelessWidget {
  final double height;
  final String userName;
  final String country;
  final int leadCount;
  const LeaderBoardAvatar(
      {super.key,
      required this.height,
      required this.userName,
      required this.country,
      required this.leadCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Feather.watch),
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(
            radius: height,
            backgroundImage: const AssetImage('assets/memer.jpeg'),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            userName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            country,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            leadCount.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
