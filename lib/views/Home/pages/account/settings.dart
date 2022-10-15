import 'package:flutter/material.dart';

import '../../../../widgets/SettingListTileWidget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
          'Settings & Privacy',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SettingsListTile(
            text: 'Account',
            icon: const Icon(Icons.account_balance),
            callback: () {},
          ),
          SettingsListTile(
            text: 'Notifications',
            icon: const Icon(Icons.notifications),
            callback: () {},
          ),
          SettingsListTile(
            text: 'Content preference',
            icon: const Icon(Icons.book),
            callback: () {},
          ),
          SettingsListTile(
            text: 'General',
            icon: const Icon(Icons.settings),
            callback: () {},
          ),
          SettingsListTile(
            text: 'Storage and data usage',
            icon: const Icon(Icons.security),
            callback: () {},
          ),
          SettingsListTile(
            text: 'Terms & privacy',
            icon: const Icon(Icons.info),
            callback: () {},
          ),
          SettingsListTile(
            text: 'Contact us',
            icon: const Icon(Icons.call),
            callback: () {},
          ),
          SettingsListTile(
            text: 'Refer a friend. Earn',
            icon: const Icon(Icons.people),
            callback: () {},
          ),
        ],
      ),
    );
  }
}
