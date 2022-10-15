import 'package:flutter/material.dart';

class UploadContentPage extends StatelessWidget {
  const UploadContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Column(
              children: [
                const TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add a caption or #hashtag or @mention...'),
                ),
                Container(
                  height: 320,
                  color: Colors.green,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
