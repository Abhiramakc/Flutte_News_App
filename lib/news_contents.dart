import 'package:flutter/material.dart';

class NewsContent extends StatelessWidget {

  final String imageName;

  NewsContent({this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.15,
            child: FittedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  image: AssetImage('assets/images/$imageName'),
                  fit: BoxFit.contain,
                ),
              ),
              fit: BoxFit.fill,
            ),
          ),

          SizedBox(
            width: 10.0,
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'This is the heading of the realte news',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Newsreader',
                  ),
                ),

                Text(
                  'This is the heading of the realte news this is another news',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 15.0,
                    ),
                    Text(
                      '03-03-20',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.deepOrange,
                      child: Text(
                        'Sports',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    Icon(
                      Icons.bookmark_border_outlined,
                      size: 20.0,
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
