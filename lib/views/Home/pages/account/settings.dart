import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeworld/views/settings/account_page.dart';
import 'package:memeworld/views/settings/contact_us.dart';
import 'package:memeworld/views/settings/content_page.dart';
import 'package:memeworld/views/settings/data_usage.dart';
import 'package:memeworld/views/settings/faqs_page.dart';
import 'package:memeworld/views/settings/notifications_page.dart';
import 'package:memeworld/views/settings/refer_page.dart';
import 'package:memeworld/views/settings/terms_page.dart';

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
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const ReferPage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.rice_bowl_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Refer a friend, Earn',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 19,
                    )
                  ],
                ),
              ),
            ),
          ),
          SettingsListTile(
            text: 'Account',
            icon: const Icon(Icons.account_balance),
            callback: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const AccountPage();
              }));
            },
          ),
          SettingsListTile(
            text: 'Notifications',
            icon: const Icon(Icons.notifications),
            callback: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const NotificationsPage();
              }));
            },
          ),
          SettingsListTile(
            text: 'Content preference',
            icon: const Icon(Icons.book),
            callback: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const ContentPreference();
              }));
            },
          ),
          SettingsListTile(
            text: 'Data usage',
            icon: const Icon(Icons.security),
            callback: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const DataUsagePage();
              }));
            },
          ),
          SettingsListTile(
            text: 'Terms & privacy',
            icon: const Icon(Icons.badge),
            callback: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const TermsPage();
              }));
            },
          ),
          SettingsListTile(
            text: 'FAQ',
            icon: const Icon(Icons.info),
            callback: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const FaqsPage();
              }));
            },
          ),
          SettingsListTile(
            text: 'Contact us',
            icon: const Icon(Icons.call),
            callback: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return const ContactsUsPage();
              }));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(),
          const SizedBox(
            height: 25,
          ),
          SettingsListTile(
            text: 'Log Out',
            icon: const Icon(Icons.logout),
            callback: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        'Log Out?',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      content: const Text(
                        'Are you sure you want to log out?',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'NO',
                              style: TextStyle(color: Colors.black),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'YES',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
