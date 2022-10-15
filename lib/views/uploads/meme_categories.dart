import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MemeCategoriesPage extends StatelessWidget {
  const MemeCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Meme Categories',
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: GridView.count(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
          childAspectRatio: 0.8,
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withOpacity(.2),
                      image: const DecorationImage(
                        image: AssetImage('assets/meme.jpeg'),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
                const Positioned(
                  bottom: 5,
                  left: 5,
                  child: Text(
                    'Dark Humour',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withOpacity(.2),
                      image: const DecorationImage(
                        image: AssetImage('assets/user.jpeg'),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
                const Positioned(
                  bottom: 5,
                  left: 5,
                  child: Text(
                    'Music',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withOpacity(.2),
                      image: const DecorationImage(
                        image: AssetImage('assets/memer.jpeg'),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
                const Positioned(
                  bottom: 5,
                  left: 5,
                  child: Text(
                    'Animals',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withOpacity(.2),
                      image: const DecorationImage(
                        image: AssetImage('assets/memeworld.png'),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
                const Positioned(
                  bottom: 5,
                  left: 5,
                  child: Text(
                    'Football',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
