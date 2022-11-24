import 'package:flutter/material.dart';
import 'package:memeworld/views/Home/pages/account/follow_page.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage>
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
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(
          'Liked by',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
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
    );
  }
}
