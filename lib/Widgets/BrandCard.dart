import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String brandimage;
  BrandCard({this.brandimage});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(brandimage ?? 'assets/download.png'),
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),
    );
  }
}
