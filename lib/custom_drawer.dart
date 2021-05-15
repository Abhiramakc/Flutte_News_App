import 'package:flutter/material.dart';
import 'main.dart';
import 'video.dart';
import 'profile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Header Child'),
            decoration: BoxDecoration(
              color: Colors.green[900],
            ),
          ),
          ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
              }),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
              title: Text('Videos'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Video();
                    }));
              }),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Profile();
                    }));
              }),
        ],
      ),
    );
  }
}
