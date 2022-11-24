import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/widgets/search_widget.dart';

class FollowUserPage extends StatelessWidget {
  const FollowUserPage({super.key});

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
        title: const SearchWidget(),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(children: const [
              Text(
                'People to follow',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          FollowUserWidget(),
          FollowUserWidget(),
          FollowUserWidget(),
        ],
      ),
    );
  }
}

class FollowUserWidget extends StatelessWidget {
  const FollowUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.blackColor,
          radius: 18,
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Nyamiaka Lenson',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('@justdreamer'),
            Text(
              'For the love of memes',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ],
        ),
        trailing: TextButton(
          style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 25)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.blackColor.withOpacity(.2)),
                  borderRadius: BorderRadius.circular(200))),
              backgroundColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () {},
          child: const Text(
            'Follow',
            style: TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
