import 'package:flutter/material.dart';
import 'package:memeworld/views/Home/pages/account/follow_page.dart';

import '../../const/app_colors.dart';

class FollowersPage extends StatefulWidget {
  const FollowersPage({super.key});

  @override
  State<FollowersPage> createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: TabBar(
          labelColor: Colors.black,
          controller: _controller,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: AppColors.appColors,
          tabs: const [
            Tab(text: 'Followers'),
            Tab(text: 'Following'),
          ],
        ),
      ),
      body: TabBarView(controller: _controller, children: [
        ListView(
          children: const [
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
          ],
        ),
        ListView(
          children: const [
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
            FollowUserWidget(),
          ],
        ),
      ]),
    );
  }
}
