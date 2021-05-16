import 'package:flutter/material.dart';
import 'main.dart';
import 'video/video.dart';
import 'profile/profile.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              color: Color(0xff1a322b),
            ),
          ),
          ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              }),
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          ListTile(
              title: Text(
                'Videos',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Video();
                }));
              }),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              }),
        ],
      ),
    );
  }
}
