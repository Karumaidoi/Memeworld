import 'package:flutter/material.dart';

import '../../../../const/app_colors.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Leaderboard',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
        ),
        bottom: TabBar(
          labelStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'Nunito'),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          labelColor: Colors.black,
          controller: _controller,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: AppColors.appColors,
          tabs: const [
            Tab(text: 'Local'),
            Tab(text: 'Global'),
            Tab(text: 'Rising'),
          ],
        ),
        actions: [
          Chip(
            label: const Text('All Time'),
            deleteIcon: const Icon(Icons.keyboard_arrow_down_rounded),
            onDeleted: () {},
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
