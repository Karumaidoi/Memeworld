import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/main_auth.dart';
import 'package:memeworld/views/Home/pages/account/leader_board.dart';
import 'package:memeworld/views/Home/pages/account/settings.dart';
import 'package:memeworld/widgets/call_to_action.dart';
import './../../Profile/followers_page.dart';
import './../../Profile/memeworld_points.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const SettingsPage();
              }));
            },
            icon: const Icon(
              Feather.settings,
              size: 22,
            ),
          )
        ],
      ),
      body: isLoggedIn == true
          ? Column(
              children: [
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    width: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Nyamiaka.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  ),
                                  Text(
                                    'justadreamer',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'For the love of memes.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                              Icon(
                                CupertinoIcons.person,
                                size: 75,
                                color: Colors.black.withOpacity(.2),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppColors.appColors,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'Edit profile',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InfoWidget(
                                  numberCount: '43',
                                  itemAbout: 'Followers',
                                  callback: () {
                                    Navigator.of(context).push(
                                        CupertinoPageRoute(builder: (context) {
                                      return const FollowersPage();
                                    }));
                                  },
                                ),
                                InfoWidget(
                                  numberCount: '2.1 K',
                                  itemAbout: 'Following',
                                  callback: () {
                                    Navigator.of(context).push(
                                        CupertinoPageRoute(builder: (context) {
                                      return const FollowersPage();
                                    }));
                                  },
                                ),
                                InfoWidget(
                                  numberCount: '2',
                                  itemAbout: 'Favourites',
                                  callback: () {},
                                ),
                                InfoWidget(
                                  numberCount: '2',
                                  itemAbout: 'Rank',
                                  callback: () {
                                    Navigator.of(context).push(
                                        CupertinoPageRoute(builder: (context) {
                                      return const LeaderBoardScreen();
                                    }));
                                  },
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.grid_view_outlined),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(Icons.list_rounded)
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      CupertinoPageRoute(builder: (context) {
                                    return MemeworldPoints();
                                  }));
                                },
                                child: const Text(
                                  '1,199 points',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: GridView.count(
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      crossAxisCount: 3,
                      childAspectRatio: 0.7,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              image: const DecorationImage(
                                image: AssetImage('assets/meme.jpeg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              image: const DecorationImage(
                                image: AssetImage('assets/memer.jpeg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              image: const DecorationImage(
                                image: AssetImage('assets/user.jpeg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              image: const DecorationImage(
                                image: AssetImage('assets/memeworld.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        // Text('Hola'),
                      ],
                    ),
                  ),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                const Icon(
                  CupertinoIcons.person,
                  size: 150,
                ),
                const SizedBox(height: 10),
                const Text('Log in to my account'),
                const SizedBox(height: 100),
                CtaButton(
                    color: AppColors.appColors,
                    text: 'LOG IN',
                    callback: () {
                      setState(() {
                        isLoggedIn = true;
                      });
                    }),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont have an account yet?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              CupertinoPageRoute(builder: (context) {
                            return const MainAuth();
                          }));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: AppColors.appColors),
                        ))
                  ],
                )
              ],
            ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  final String numberCount;
  final String itemAbout;
  final VoidCallback callback;
  const InfoWidget({
    Key? key,
    required this.numberCount,
    required this.itemAbout,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
      ),
      child: InkWell(
        onTap: callback,
        child: Column(
          children: [
            Text(
              numberCount,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              itemAbout,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
