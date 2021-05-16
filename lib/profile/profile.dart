import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../custom_drawer.dart';
import 'profile_fields.dart';

class Profile extends StatelessWidget {
  final double imageRadius = 60.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Color(0xff1a322b),
          ),
          drawer: CustomDrawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  color: Color(0xfff3f3f3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(imageRadius)),
                            border: Border.all(
                              color: Color(0xffed6206),
                              width: 2.0,
                            )),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/img_avatar.png'),
                          radius: imageRadius,
                        ),
                      ),
                      Text(
                        'Dinesh Yaduvamshi',
                        style: TextStyle(
                          color: Color(0xffed6206),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 25.0,
                        width: 90.0,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Edit profile',
                              style: TextStyle(
                                color: Color(0xffed6206),
                                fontSize: 12.0,
                              ),
                            )),
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileFields(fieldName: 'Location'),
                      ProfileFields(fieldName: 'Pincode'),
                      ProfileFields(fieldName: 'Date of Birth'),
                      ProfileFields(fieldName: 'Gender'),
                      ProfileFields(fieldName: 'Whatsapp'),
                      ProfileFields(fieldName: 'Email'),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
