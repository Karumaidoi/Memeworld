import 'package:flutter/material.dart';

class ContactsUsPage extends StatelessWidget {
  const ContactsUsPage({super.key});

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
              Icons.arrow_back_ios,
            )),
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        children: const [
          ListTileWidget(title: 'Email', subtitle: 'contact@memeworldapp.com'),
          ListTileWidget(title: 'Twitter', subtitle: '@memeworld_app'),
          ListTileWidget(
              title: 'LinkedIn', subtitle: 'www.linkedin.com/memeworld'),
          ListTileWidget(title: 'Facebook', subtitle: 'www.facebook.memeworld'),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListTileWidget(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
