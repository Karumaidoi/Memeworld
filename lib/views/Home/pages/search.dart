import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:memeworld/views/Home/pages/account/follow_page.dart';
import 'package:memeworld/views/Home/pages/account/leader_board.dart';
import 'package:memeworld/widgets/interest_chip.dart';
import 'package:memeworld/widgets/search_widget.dart';

import '../../../const/app_colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const FollowUserPage();
              }));
            },
            icon: const Icon(Icons.person_add_alt)),
        title: const SearchWidget(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return const LeaderBoardScreen();
                }));
              },
              icon: const Icon(Icons.leaderboard_outlined))
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/meme.jpeg',
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: const [
                Text(
                  'Trending',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          const TrendingWidget(),
          const TrendingWidget(),
          const TrendingWidget(),
          const TrendingWidget(),
          const TrendingWidget(),
          const TrendingWidget(),
          TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: const [
                    Text(
                      'See more',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Top Categories'),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See more',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Row(
                      children: const [
                        InterestChip(text: 'Dark humour'),
                        Spacer(),
                        InterestChip(text: 'Politics'),
                        Spacer(),
                        InterestChip(text: 'Science'),
                      ],
                    ),
                    const InterestChip(text: 'Entertainment'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        '#Riggy Gachagua',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      trailing: Text('4K posts'),
    );
  }
}
