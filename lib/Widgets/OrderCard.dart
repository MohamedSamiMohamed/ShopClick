import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String distributor;
  final String title;
  final String image;
  OrderCard({this.distributor, this.image, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 15),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 85,
                  width: 80,
                  child: Card(
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/download.png',
                          height: 50, width: 50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 16,
                right: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$distributor',
                      style: TextStyle(color: Color(0xFF333333), fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text('$title',
                        style:
                            TextStyle(color: Color(0xFF333333), fontSize: 13)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.favorite_border_outlined),
                    onPressed: () => {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
