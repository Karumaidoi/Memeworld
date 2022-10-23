import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(children: [
        const SizedBox(height: 20),
        ListTile(
          title: const Text(
            'Allow push notifications',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text(
            'Receive notifications as they happen,you\'ll receive them when you\'re in Memeworld. Turn them off anytime',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          trailing: Checkbox(
            value: true,
            onChanged: (value) {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ]),
    );
  }
}
