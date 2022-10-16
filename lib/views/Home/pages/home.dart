import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/data/users.dart';
import 'package:memeworld/widgets/avatar_widget.dart';
import 'package:memeworld/widgets/follow_widget.dart';
import 'package:memeworld/widgets/post_widget.dart';

import '../../../const/app_colors.dart';
import 'story_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Memeworld',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const MyStoryWidget(),
                    AvatarWidget(
                      image: 'assets/memeworld.png',
                      text: 'Nyamiaka',
                      user: users[0],
                      callback: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => StoryPage(user: users[0]),
                          ),
                        );
                      },
                    ),
                    AvatarWidget(
                      image: 'assets/memeworld.png',
                      text: 'Tesla',
                      user: users[1],
                      callback: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => StoryPage(user: users[1]),
                          ),
                        );
                      },
                    ),
                    AvatarWidget(
                      image: 'assets/user.jpeg',
                      text: 'Alex',
                      user: users[2],
                      callback: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => StoryPage(user: users[2]),
                          ),
                        );
                      },
                    ),
                    AvatarWidget(
                      image: 'assets/memeworld.png',
                      text: 'Emma',
                      user: users[3],
                      callback: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => StoryPage(user: users[3]),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )),
          Flexible(
            flex: 2,
            child: Column(
              children: [
                TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    controller: _controller,
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: AppColors.appColors,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Nunito'),
                    tabs: const [
                      Tab(
                        text: 'Following',
                      ),
                      Tab(text: 'For you'),
                    ]),
              ],
            ),
          ),
          Flexible(
              flex: 15,
              child: TabBarView(controller: _controller, children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Popular on Memeworld',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Follow an account to view their latest memes.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: const [
                          FollowWidget(
                            name: 'Larry Kenya',
                            userName: '@larrymemes',
                          ),
                          Spacer(),
                          FollowWidget(
                            name: 'Daniel Gakeri',
                            userName: '@dangakeri254',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    PostWidget(
                      userName: 'justadreamer',
                      timePosted: '20 mins',
                      imageContent: 'assets/meme.jpeg',
                      likes: '247',
                      shareCount: '69',
                      comments: '57',
                    ),
                    PostWidget(
                      userName: 'alexythedev',
                      timePosted: '1 hr',
                      imageContent: 'assets/memer.jpeg',
                      likes: '27',
                      shareCount: '1',
                      comments: '8',
                    ),
                  ],
                ),
              ]))
        ],
      ),
    );
  }
}
