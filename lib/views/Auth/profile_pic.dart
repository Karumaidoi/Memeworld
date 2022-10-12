import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memeworld/const/app_colors.dart';
import 'package:memeworld/views/Home/main_home.dart';
import 'package:memeworld/widgets/call_to_action.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({super.key});

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Add Profile Picture',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Choose your favourite meme'),
          const SizedBox(
            height: 75,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text(
                        'Choose to pick image',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () async {
                                Navigator.of(context).pop();
                                var tempImage = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                setState(() {
                                  image = File(tempImage!.path);
                                });
                              },
                              child: const Text('Gallery')),
                          TextButton(
                              onPressed: () async {
                                Navigator.of(context).pop();
                                await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                              },
                              child: const Text('Camera')),
                        ],
                      ),
                    );
                  });
            },
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Colors.black.withOpacity(.1),
              backgroundImage: image == null ? null : FileImage(image!),
              child: image == null
                  ? const Icon(
                      CupertinoIcons.person,
                      size: 90,
                      color: Colors.black,
                    )
                  : const SizedBox(),
            ),
          ),
          const Spacer(),
          CtaButton(
              color: AppColors.appColors,
              text: 'CONTINUE',
              callback: () {
                Navigator.of(context)
                    .pushReplacement(CupertinoPageRoute(builder: (context) {
                  return const MainHome();
                }));
              }),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
