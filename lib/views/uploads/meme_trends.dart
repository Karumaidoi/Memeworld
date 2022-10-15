import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:memeworld/views/Home/pages/search.dart';

import '../../const/app_colors.dart';

class MemeTrendsPage extends StatefulWidget {
  const MemeTrendsPage({super.key});

  @override
  State<MemeTrendsPage> createState() => _MemeTrendsPageState();
}

class _MemeTrendsPageState extends State<MemeTrendsPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trends',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Feather.search,
                size: 22,
              ))
        ],
        bottom: TabBar(
          labelColor: Colors.black,
          controller: _controller,
          indicatorWeight: 3,
          isScrollable: false,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: AppColors.appColors,
          labelStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(.4)),
          tabs: const [
            Tab(text: 'Trending'),
            Tab(text: 'Latest'),
            Tab(text: 'Popular'),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(controller: _controller, children: [
        const SizedBox(),
        const SizedBox(),
        ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            TrendingWidget(),
            TrendingWidget(),
            TrendingWidget(),
            TrendingWidget(),
          ],
        )
      ]),
    );
  }
}
