import 'package:flutter/material.dart';
import 'package:instagram_clone/components/post.dart';

class UserFeed extends StatefulWidget {
  @override
  _UserFeedState createState() => _UserFeedState();
}

class _UserFeedState extends State<UserFeed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Post(),
        SizedBox(
          height: 20,
        ),
        Post(),
        SizedBox(
          height: 20,
        ),
        Post(),
      ],
    );
  }
}
