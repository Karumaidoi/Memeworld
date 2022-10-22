import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/widgets/post_widget.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(CupertinoIcons.back)),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          PostWidget(
              userName: 'Daniel Gakeri',
              timePosted: '2 hrs',
              imageContent: 'assets/meme.jpeg',
              likes: '3.8k',
              comments: '1k',
              shareCount: '2.7k'),
          PostWidget(
              userName: 'Felisters Mulei',
              timePosted: '8 hrs',
              imageContent: 'assets/memer.jpeg',
              likes: '3k',
              comments: '1k',
              shareCount: '2.7k')
        ],
      ),
    );
  }
}
