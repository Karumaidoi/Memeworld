import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memeworld/views/Home/pages/account/follow_page.dart';
import 'package:memeworld/views/Home/pages/account/leader_board.dart';
import 'package:memeworld/views/uploads/meme_categories.dart';
import 'package:memeworld/views/uploads/meme_trends.dart';
import 'package:memeworld/widgets/interest_chip.dart';
import 'package:memeworld/widgets/search_widget.dart';

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
            icon: SvgPicture.asset(
              'assets/AddUser.svg',
              height: 22,
              width: 22,
            )),
        title: const SearchWidget(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return const LeaderBoardScreen();
                }));
              },
              icon: SvgPicture.asset(
                'assets/LeaderBoard.svg',
                height: 22,
                width: 22,
              ))
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
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const TrendingWidget(),
          const TrendingWidget(),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return const MemeTrendsPage();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'See more',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.4),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Top Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.7)),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) {
                            return const MemeCategoriesPage();
                          }));
                        },
                        child: Text(
                          'See more',
                          style: TextStyle(
                            color: Colors.black.withOpacity(.4),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: const [
                      InterestChip(text: 'Dark humour'),
                      InterestChip(text: 'Politics'),
                      InterestChip(text: 'Science'),
                      InterestChip(text: 'Entertainment'),
                    ],
                  ),
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
    return ListTile(
      title: const Text(
        '#Riggy Gachagua',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      trailing: Text(
        '4K posts',
        style: TextStyle(color: Colors.black.withOpacity(.6)),
      ),
    );
  }
}
