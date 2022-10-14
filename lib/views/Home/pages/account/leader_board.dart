import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/widgets/avatars/leader_board.dart';

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
          unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal, fontFamily: 'Nunito'),
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
      body: TabBarView(controller: _controller, children: [
        const SizedBox(),
        Column(
          children: [
            Flexible(
              flex: 4,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  LeaderBoardAvatar(
                    userName: '@dentrix',
                    country: 'Kenya',
                    height: 35,
                    leadCount: 2000,
                  ),
                  LeaderBoardAvatar(
                    userName: '@dangakeri',
                    country: 'Kenya',
                    height: 45,
                    leadCount: 3000,
                  ),
                  LeaderBoardAvatar(
                    userName: '@mercie',
                    country: 'Kenya',
                    height: 35,
                    leadCount: 2500,
                  )
                ],
              ),
            ),
            Flexible(
                flex: 8,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    LeaderTileWidget(
                      userName: '@nyamiaka',
                      country: 'Kenya',
                      points: '2,400 pts',
                      isRising: false,
                    ),
                    LeaderTileWidget(
                      userName: '@amelia',
                      country: 'Kenya',
                      points: '2,350 pts',
                      isRising: false,
                    ),
                  ],
                ))
          ],
        ),
        Column(
          children: [
            Flexible(
              flex: 4,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  LeaderBoardAvatar(
                    userName: '@dentrix',
                    country: 'Kenya',
                    height: 35,
                    leadCount: 2000,
                  ),
                  LeaderBoardAvatar(
                    userName: '@dangakeri',
                    country: 'Kenya',
                    height: 45,
                    leadCount: 3000,
                  ),
                  LeaderBoardAvatar(
                    userName: '@mercie',
                    country: 'Kenya',
                    height: 35,
                    leadCount: 2500,
                  )
                ],
              ),
            ),
            Flexible(
                flex: 8,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    LeaderTileWidget(
                      userName: '@nyamiaka',
                      country: 'Kenya',
                      points: '2,400 pts',
                      isRising: true,
                    ),
                    LeaderTileWidget(
                      userName: '@amelia',
                      country: 'Kenya',
                      points: '2,350 pts',
                      isRising: true,
                    ),
                  ],
                ))
          ],
        ),
      ]),
    );
  }
}

class LeaderTileWidget extends StatelessWidget {
  final String userName;
  final String country;
  final String points;
  final bool isRising;
  const LeaderTileWidget({
    Key? key,
    required this.userName,
    required this.country,
    required this.points,
    required this.isRising,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.pickColor,
        radius: 22,
        child: const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.black,
          child: Icon(
            CupertinoIcons.person,
            color: Colors.white,
          ),
        ),
      ),
      title: Text(
        userName,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Text(
        country,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      trailing: SizedBox(
        width: MediaQuery.of(context).size.width * .4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            isRising == true
                ? Row(
                    children: [
                      const Text('+500'),
                      Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: AppColors.appColors,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        points,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  )
                : Text(
                    points,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
