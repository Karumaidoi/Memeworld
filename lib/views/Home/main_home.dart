import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.home,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.search,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add_circled,
                  size: 35,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.person,
                  size: 25,
                ))
          ],
        ),
      ),
    );
  }
}
