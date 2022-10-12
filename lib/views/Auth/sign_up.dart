import 'package:flutter/material.dart';
import 'package:memeworld/views/Auth/verification.dart';
import 'package:memeworld/widgets/textfield_widget.dart';

import '../../const/app_colors.dart';
import '../../widgets/call_to_action.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text(
            'Sign Up',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
              labelColor: Colors.black,
              controller: _controller,
              indicatorColor: AppColors.appColors,
              // indicator: UnderlineTabIndicator(),
              // isScrollable: true,
              tabs: const [
                Tab(text: 'Phone'),
                Tab(text: 'Email'),
              ]),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.infinity,
          child: TabBarView(
            controller: _controller,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const TextFieldWidget(
                        icon: false,
                        title: 'Phone',
                        iconImage: Icon(Icons.abc)),
                    const SizedBox(height: 15),
                    const Text(
                      'If you sign up with SMS, SMS fees apply',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    CtaButton(
                      color: AppColors.appColors,
                      text: 'SEND CODE',
                      callback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verification()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const TextFieldWidget(
                        icon: false,
                        title: 'Email',
                        iconImage: Icon(Icons.abc)),
                    const SizedBox(height: 245),
                    CtaButton(
                      color: AppColors.appColors,
                      text: 'SEND CODE',
                      callback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verification()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
