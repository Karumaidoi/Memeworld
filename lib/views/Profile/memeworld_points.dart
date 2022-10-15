import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemeworldPoints extends StatelessWidget {
  const MemeworldPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Memeworld Points',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.leaderboard))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: const [
                SizedBox(
                  height: 14,
                ),
                Text(
                  '420',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text('Total Points')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('1 Referral = 50 points'),
                    Text('1 Post = 5 Points'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('1 Like = 1 point'),
                    Text('1 Comment = 2 points'),
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const CupertinoAlertDialog(
                      content: Text(
                        'Coming Soon!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 80),
              height: 45,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'REDEEM',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
