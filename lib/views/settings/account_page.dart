import 'package:flutter/material.dart';
import 'package:memeworld/views/settings/contact_us.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(
          'Account Information',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20),
            const ListTileWidget(
                title: 'Phone number', subtitle: '+254719531828'),
            const ListTileWidget(title: 'Email', subtitle: 'Add email address'),
            const ListTileWidget(
                title: 'Password', subtitle: 'Change password'),
            const ListTileWidget(
                title: 'Verification', subtitle: 'Apply for verification'),
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 5),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Deactivate Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
