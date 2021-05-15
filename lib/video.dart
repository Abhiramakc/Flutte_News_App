import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class Video extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
      ),
      drawer: CustomDrawer(),
    );
  }
}
