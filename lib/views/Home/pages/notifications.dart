import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:memeworld/widgets/notif.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List counts = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Feather.settings,
              size: 22,
            ),
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
        ],
      ),
    );
  }
}
