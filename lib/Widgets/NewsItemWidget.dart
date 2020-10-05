import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String image;
  final String body;
  final String time;

  NewsItem({this.title, this.body, this.image, this.time});
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 250,
              child: Text('$title',
                  maxLines: 2,
                  style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: Text('$body',
                  maxLines: 2,
                  style: TextStyle(color: Color(0xFF333333), fontSize: 14)),
            ),
            SizedBox(
              height: 7,
            ),
            Text('$time',
                style: TextStyle(color: Color(0xFF333333), fontSize: 12)),
            Divider()
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
          height: 70,
          width: 70,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('$image'),
                  height: 20,
                  width: 20,
                ),
              )),
        ),
      ),
    ]);
  }
}
