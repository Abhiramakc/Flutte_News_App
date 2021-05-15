import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'news_contents.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
      ),
      drawer: CustomDrawer(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              NewsContent(imageName: 'avengers.jpg',),

              NewsContent(imageName: 'kejrival.jpg',),

              NewsContent(imageName: 'modi.jpg',),

              NewsContent(imageName: 'modi2.jpg',),

              NewsContent(imageName: 'newspng.png',),

            ],
          ),
        ),
    );
  }
}
