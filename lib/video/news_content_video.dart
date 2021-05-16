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
            width: MediaQuery.of(context).size.width * 0.30,
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
            width: 20.0,
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
                    //MediaQuery.of(context).size.height * 0.023,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Newsreader',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 15.0, //MediaQuery.of(context).size.height * 0.023,
                    ),
                    Text(
                      '03-03-20',
                      style: TextStyle(
                        color: Colors.grey,
                        //fontSize: MediaQuery.of(context).size.height * 0.023, //none
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
                            fontSize: 15.0,
                            //MediaQuery.of(context).size.height * 0.023,
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
