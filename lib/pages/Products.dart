import 'package:flutter/material.dart';
import 'package:shop_click/Widgets/BrandCard.dart';
import 'package:shop_click/Widgets/ProductItem.dart';

class Products extends StatelessWidget {
  final List<BrandCard> brandsList = [
    BrandCard(brandimage: 'assets/unnamed.png'),
    BrandCard(brandimage: 'assets/001-box.png'),
    BrandCard(brandimage: 'assets/unnamed.png'),
    BrandCard(brandimage: 'assets/001-box.png'),
    BrandCard(brandimage: 'assets/unnamed.png')
  ];

  final List<ProductItem> productsList = [
    ProductItem(),
    ProductItem(),
    ProductItem(),
    ProductItem(),
    ProductItem(),
    ProductItem()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Back',
            style: TextStyle(color: Color(0xFF000000), fontSize: 14),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => {},
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.notifications_none, color: Colors.black),
                onPressed: () => {}),
            IconButton(
                icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                onPressed: () => {}),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23.0, bottom: 19),
              child: Text(
                'Al Amir',
                style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 150,
              color: Color(0xFFF6F6F6),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Brands',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(text: 'View all'),
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: brandsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return (brandsList[index]);
                        }),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 14, bottom: 19),
              child: Text('All Products',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: productsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return productsList[index];
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
