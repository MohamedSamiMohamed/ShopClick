import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String state;
  final String image;
  final String description;
  final String price;
  final String quantity;

  const ProductItem(
      {this.state, this.image, this.description, this.price, this.quantity});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Card(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Available',
                        style:
                            TextStyle(color: Color(0xFF22b12b), fontSize: 12),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.favorite_border_outlined),
                        onPressed: () => {}),
                  ],
                ),
                Center(
                  child: Image(
                    image: AssetImage('assets/download.png'),
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Coca-Cola 2.25 liter',
                          style: TextStyle(color: Color(0xFF333333)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('105.95 EGP ',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFDDDDDD),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.remove,
                          color: Color(0xFF454F63),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xFFBBBBBB)),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '0',
                          style: TextStyle(color: Color(0xFF121212)),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFDDDDDD),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Color(0xFF454F63),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
              ]),
        ),
        ButtonTheme(
          height: 40,
          minWidth: double.infinity,
          child: FlatButton(
              color: Color(0xFFFFDE0A),
              onPressed: () => {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'ADD TO CARD',
                style: TextStyle(fontSize: 14, color: Color(0xFF454F63)),
              )),
        ),
        ButtonTheme(
          height: 40,
          minWidth: double.infinity,
          child: FlatButton(
              color: Color(0xFF333333),
              onPressed: () => {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'QUICK ORDER ',
                style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
              )),
        ),
      ],
    );
  }
}
