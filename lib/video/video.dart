import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../custom_drawer.dart';
import 'news_content_video.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1a322b),
      ),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Videos',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(
              height: 2.0,
            ),
            Divider(
              height: 3.0,
              color: Color(0xffefefef),
              thickness: 5.0,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image(
                image: AssetImage('assets/images/Nissan.png'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'This is the heading of the realte news',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Date and time here',
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'This is the heading of the realte news this is another news',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xfff2f2f2)),
                        elevation: MaterialStateProperty.all(5.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Information',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),

                    NewsContentVideo(
                        imageName: 'modi.jpg', newsName: 'Info'),

                    NewsContentVideo(
                        imageName: 'avengers.jpg', newsName: 'Info'),

                    NewsContentVideo(
                        imageName: 'kejrival.jpg', newsName: 'Info'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
