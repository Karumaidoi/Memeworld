import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferPage extends StatelessWidget {
  const ReferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        centerTitle: false,
        title: const Text(
          'Refer & Earn',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 290,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  const SizedBox(height: 20),
                  const ReferalContentWidget(
                    icon: Icon(Icons.travel_explore_outlined),
                    text: 'Send the refferals link to your friend',
                  ),
                  const ReferalContentWidget(
                    icon: Icon(Icons.travel_explore_outlined),
                    text: 'Ask them to sign up from your link',
                  ),
                  const ReferalContentWidget(
                    icon: Icon(Icons.wallet_giftcard_rounded),
                    text: 'You get 50 memeworld points\nfor each refferal',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Referal link to share',
                          style:
                              TextStyle(color: Colors.black.withOpacity(.3))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: 250,
                        child: Row(
                          children: const [
                            SizedBox(width: 10),
                            Icon(
                              Icons.paste,
                              color: Colors.white,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'www.memeworldjad1990y',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(CupertinoIcons.share, size: 23)
                    ],
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReferalContentWidget extends StatelessWidget {
  final Icon icon;
  final String text;

  const ReferalContentWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 20),
          Text(text),
        ],
      ),
    );
  }
}
