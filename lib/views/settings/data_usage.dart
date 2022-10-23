import 'package:flutter/material.dart';

class DataUsagePage extends StatelessWidget {
  const DataUsagePage({super.key});

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
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Data Usage',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(children: [
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Limit how Memeworld uses some of your network data',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(height: 40),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Autoplay',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Select whether videos and GIFs should play autonmatically on this device',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                'On cellular or Wi-Fi',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Checkbox(
                value: true,
                onChanged: (value) {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                'Only on Wi-Fi',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Checkbox(
                value: false,
                onChanged: (value) {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                'Never',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Checkbox(
                value: false,
                onChanged: (value) {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
