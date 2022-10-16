import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Home/pages/home.dart';
import 'package:memeworld/views/Home/pages/notifications.dart';
import 'package:memeworld/views/Home/pages/profile.dart';
import 'package:memeworld/views/Home/pages/search.dart';
import './../uploads/upload_content.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int index = 0;
  List pages = const [
    HomePage(),
    SearchPage(),
    NotificationsPage(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[index],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                icon: SvgPicture.asset('assets/Group 2.svg',
                    color: index == 0 ? AppColors.appColors : Colors.black)),
            IconButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                icon: SvgPicture.asset(
                  'assets/Search.svg',
                  color: index == 1 ? AppColors.appColors : Colors.black,
                  height: 22,
                  width: 22,
                )),
            IconButton(
                onPressed: () {
                  showPopUp(context);
                },
                icon: SvgPicture.asset('assets/Add.svg')),
            IconButton(
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                icon: SvgPicture.asset(
                  'assets/Notifications2.svg',
                  color: index == 2 ? AppColors.appColors : Colors.black,
                  height: 22,
                  width: 22,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                },
                icon: SvgPicture.asset(
                  'assets/Profile2.svg',
                  color: index == 3 ? AppColors.appColors : Colors.black,
                  height: 22,
                  width: 22,
                ))
          ],
        ),
      ),
    );
  }

  Future<dynamic> showPopUp(BuildContext context) {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: const Text(
              'Post to Memeworld',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito'),
            ),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () async {
                  await ImagePicker().pickVideo(source: ImageSource.gallery);
                },
                child: Row(
                  children: const [
                    Icon(Icons.gif_box_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'GIF',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () async {
                  await ImagePicker().pickVideo(source: ImageSource.gallery);
                },
                child: Row(
                  children: const [
                    Icon(Icons.video_file),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'VIDEO',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoActionSheetAction(
                onPressed: () async {
                  var tempImage = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);

                  if (tempImage == null) return;

                  if (tempImage != null) {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return UploadContentPage(
                        image: File(tempImage.path),
                      );
                    }));
                  }
                },
                child: Row(
                  children: const [
                    Icon(Icons.image),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'IMAGE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                    fontFamily: 'Nunito',
                  ),
                )),
          );
        });
  }
}
