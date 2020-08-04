import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/components/user_feed.dart';
import 'package:instagram_clone/components/user_stories.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _cIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            UserStories(),
            Divider(
              height: 24,
              indent: 16,
              endIndent: 16,
            ),
            UserFeed(),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          OMIcons.cameraAlt,
          color: Colors.black,
        ),
      ),
      title: Center(
        child: Container(
          height: 30,
          child: Image.asset(
            'assets/insta_logo.png',
            alignment: Alignment.center,
          ),
        ),
      ),
      centerTitle: true,
      elevation: .5,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.paperPlane,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _cIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (tab) {
        setState(() {
          _cIndex = tab;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            OMIcons.home,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            OMIcons.search,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            OMIcons.addBox,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.add_box,
            color: Colors.black,
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.heart,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.share,
            color: Colors.black,
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/stories.jpg',
            ),
            radius: 14,
          ),
          activeIcon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: Container(),
        ),
      ],
    );
  }
}
