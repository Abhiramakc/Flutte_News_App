import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'news_contents.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1a322b),
      ),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NewsContent(
              imageName: 'avengers.jpg',
              newsName: 'Sports',
              iconName: Icons.bookmark_border_outlined,
            ),
            NewsContent(
              imageName: 'kejrival.jpg',
              newsName: 'Sports',
              iconName: Icons.bookmark_border_outlined,
            ),
            NewsContent(
              imageName: 'modi.jpg',
              newsName: 'Sports',
              iconName: Icons.bookmark_border_outlined,
            ),
            NewsContent(
              imageName: 'modi2.jpg',
              newsName: 'Sports',
              iconName: Icons.bookmark_border_outlined,
            ),
            NewsContent(
              imageName: 'newspng.png',
              newsName: 'Sports',
              iconName: Icons.bookmark_border_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
