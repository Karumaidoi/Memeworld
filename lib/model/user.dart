import 'package:flutter/cupertino.dart';

import 'story.dart';

class User {
  final String name;
  final String imgUrl;
  final List<Story> stories;

  const User({
    required this.name,
    required this.imgUrl,
    required this.stories,
  });
}
