import 'dart:io';

import 'package:flutter/material.dart';

class UploadContentPage extends StatelessWidget {
  final File image;
  const UploadContentPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
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
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(image),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.black.withOpacity(.2),
                      borderRadius: BorderRadius.circular(12)),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send))
                  ],
                )
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
