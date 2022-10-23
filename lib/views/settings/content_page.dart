import 'package:flutter/material.dart';

class ContentPreference extends StatelessWidget {
  const ContentPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Content Preference',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(children: [
        const SizedBox(height: 10),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Select the kind of content you want to receive'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Location',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text(
            'Show content in my location',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text(
            'When this is on.you\'ll you will see what\'s happening around you',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          trailing: Checkbox(
            value: true,
            onChanged: ((value) {}),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
        const Divider(
          height: 50,
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Personalization',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        ListTile(
          title: const Text(
            'Trends for you',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text(
            'You can personolize trends based on your location and who to follow',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          trailing: Checkbox(
            value: true,
            onChanged: ((value) {}),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ]),
    );
  }
}
