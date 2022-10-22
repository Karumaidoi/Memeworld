import 'package:flutter/material.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({super.key});

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
          'FAQS',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
