import 'package:flutter/material.dart';

class NewsContentVideo extends StatelessWidget {
  final String imageName;
  final String newsName;

  NewsContentVideo({this.imageName, this.newsName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.10,
            child: FittedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image(
                  image: AssetImage('assets/images/$imageName'),
                  fit: BoxFit.contain,
                ),
              ),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This is the heading of the realte news',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 18.0,
                      color: Colors.grey,
                    ),
                    Text(
                      '03-03-20',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0
                      ),
                    ),
                    Container(
                      width: 100.0,
                      color: Color(0xffed6206),
                      child: Text(
                        newsName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
