import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/widgets/notif.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 19),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.settings),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          NotifWidget(title: 'Alex Maina', subtitle: 'liked your post'),
          NotifWidget(title: 'Dennis Kyusya', subtitle: 'liked your post'),
          NotifWidget(title: 'Joe Doe', subtitle: 'liked your post'),
          NotifWidget(title: 'Brian Kagwanja', subtitle: 'liked your post'),
          NotifWidget(title: 'Caldewood Alikula', subtitle: 'liked your post'),
          NotifWidget(title: 'Dennis Gachie', subtitle: 'liked your post'),
          NotifWidget(title: 'Daniel Gakeri', subtitle: 'liked your post'),
        ],
      ),
    );
  }
}
