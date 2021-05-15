import 'package:flutter/material.dart';

class ProfileFields extends StatelessWidget {
  final String fieldName;

  ProfileFields({this.fieldName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          fieldName,
          style: TextStyle(
            color: Colors.blueGrey[200],
            fontWeight: FontWeight.bold,
          ),
        ),
        Theme(
          data: ThemeData(
              primaryColor: Colors.blueGrey,
              primaryColorDark: Colors.blueGrey),
          child: Container(
            height: 25.0,
            child: TextField(
              cursorColor: Colors.blueGrey,
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
