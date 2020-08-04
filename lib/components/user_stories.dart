import 'package:flutter/material.dart';

class UserStories extends StatefulWidget {
  @override
  _UserStoriesState createState() => _UserStoriesState();
}

class _UserStoriesState extends State<UserStories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 12.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
          _storyItem(),
        ],
      ),
    );
  }

  Widget _storyItem() {
    final double radius = 40;
    return Container(
      width: radius * 2,
      height: radius * 2,
      padding: EdgeInsets.only(right: 15.0),
      child: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/stories.jpg',
        ),
        radius: 32,
      ),
    );
  }
}
