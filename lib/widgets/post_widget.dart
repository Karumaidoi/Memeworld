import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/views/Home/pages/account/comment_page.dart';
import 'package:memeworld/views/Profile/likes_page.dart';
import 'package:share_plus/share_plus.dart';

import 'action_widget.dart';

class PostWidget extends StatefulWidget {
  final String userName;
  final String timePosted;
  final String imageContent;
  final String likes;
  final String comments;
  final String shareCount;
  const PostWidget(
      {super.key,
      required this.userName,
      required this.timePosted,
      required this.imageContent,
      required this.likes,
      required this.comments,
      required this.shareCount});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  showOverlay(BuildContext context, String image) async {
    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Column(
        children: [
          GestureDetector(
            onTap: () {
              // overlayEntry!.remove();
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              overlayEntry!.remove();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.download_circle,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Stack(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover),
                      ),
                    ),
                  ]),
                  const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    overlayState!.insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpeg'),
              ),
              title: Text(
                widget.userName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              trailing: SizedBox(
                width: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.timePosted),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          seeMore(context);
                        },
                        child: const Icon(Icons.more_horiz))
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showOverlay(context, widget.imageContent);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.1),
                      image: DecorationImage(
                        image: AssetImage(widget.imageContent),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Row(
                    children: [
                      ActionWidget(
                        icon: const Icon(Icons.favorite_border_outlined),
                        text: widget.likes,
                        callback: () {
                          Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) {
                            return const LikesPage();
                          }));
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ActionWidget(
                        icon: const Icon(
                          CupertinoIcons.chat_bubble,
                          size: 22,
                        ),
                        text: widget.comments,
                        callback: () {
                          Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) {
                            return const CommentsPage();
                          }));
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  ActionWidget(
                    text: widget.shareCount,
                    icon: const Icon(
                      CupertinoIcons.share_up,
                      size: 22,
                    ),
                    callback: () {
                      Share.share('I love eating');
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future seeMore(BuildContext context) {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.ads_click_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Follow @nyams',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.volume_mute),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Mute @nyams',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.block),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Block @nyams',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.flag),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Report post',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
