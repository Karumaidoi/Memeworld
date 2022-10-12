import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Auth/profile_pic.dart';
import 'package:memeworld/widgets/call_to_action.dart';
import 'package:memeworld/widgets/interest_chip.dart';

class InterestsPage extends StatelessWidget {
  const InterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: const Text(
                'Choose meme categories \n you enjoy',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                Text('Get better meme recommendations'),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: const [
                InterestChip(text: 'Dark Humor'),
                InterestChip(text: 'Politics'),
                InterestChip(text: 'Movies'),
                InterestChip(text: 'Engineering'),
                InterestChip(text: 'Dank'),
                InterestChip(text: 'Kenyamemes'),
                InterestChip(text: 'Animal'),
                InterestChip(text: 'Soccer'),
                InterestChip(text: 'Music'),
                InterestChip(text: 'Champions league'),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 95,
        child: Center(
          child: CtaButton(
              color: AppColors.appColors,
              text: 'CONTINUE',
              callback: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return const ProfilePic();
                }));
              }),
        ),
      ),
    );
  }
}
