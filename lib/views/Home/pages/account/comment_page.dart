import 'package:flutter/material.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

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
        title: const Text(
          'Comments',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              const Icon(
                Icons.message_outlined,
                size: 100,
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'No comment yet',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Text(
                    'Get the conversation started by leaving the first comment',
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: MediaQuery.of(context).size.width * .75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black.withOpacity(0.3)),
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write a comment....',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.mood),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(Icons.gif),
                      SizedBox(width: 5),
                      Icon(Icons.collections),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send))
          ],
        ),
      ),
    );
  }
}
