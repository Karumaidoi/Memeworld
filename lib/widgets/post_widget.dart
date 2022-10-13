import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

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
              title: const Text(
                'justadreamer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              trailing: SizedBox(
                width: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('20 min'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      image: AssetImage('assets/memer.jpeg'),
                      fit: BoxFit.cover,
                    )),
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
                    children: const [
                      ActionWidget(
                        icon: Icon(Icons.favorite_border_outlined),
                        text: '247',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ActionWidget(
                        icon: Icon(
                          CupertinoIcons.chat_bubble,
                          size: 22,
                        ),
                        text: '57',
                      ),
                    ],
                  ),
                  const Spacer(),
                  const ActionWidget(
                      text: '69',
                      icon: Icon(
                        CupertinoIcons.share_up,
                        size: 22,
                      )),
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
}
