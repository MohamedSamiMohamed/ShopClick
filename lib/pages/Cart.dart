import 'package:flutter/material.dart';
import 'package:shop_click/Widgets/CartItem.dart';

class Cart extends StatelessWidget {
  final List<CartItem> cartList = [
    CartItem(
        image: 'assets/download.png',
        sellerName: 'Abu Dawood',
        productName: 'Ariel powder',
        productPrice: '20.95 EGP',
        deliveryEstimation: '2-5',
        quantity: '2'),
    CartItem(
        image: 'assets/download.png',
        sellerName: 'Abu Dawood',
        productName: 'Ariel powder',
        productPrice: '20.95 EGP',
        deliveryEstimation: '2-5',
        quantity: '2'),
    CartItem(
        image: 'assets/download.png',
        sellerName: 'Abu Dawood',
        productName: 'Ariel powder',
        productPrice: '20.95 EGP',
        deliveryEstimation: '2-5',
        quantity: '2'),
    CartItem(
        image: 'assets/download.png',
        sellerName: 'Abu Dawood',
        productName: 'Ariel powder',
        productPrice: '20.95 EGP',
        deliveryEstimation: '2-5',
        quantity: '2'),
    CartItem(
        image: 'assets/download.png',
        sellerName: 'Abu Dawood',
        productName: 'Ariel powder',
        productPrice: '20.95 EGP',
        deliveryEstimation: '2-5',
        quantity: '2'),
    CartItem(
        image: 'assets/download.png',
        sellerName: 'Abu Dawood',
        productName: 'Ariel powder',
        productPrice: '20.95 EGP',
        deliveryEstimation: '2-5',
        quantity: '2'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            InkWell(
              onTap: () {},
              child: Image.asset('assets/notification.png'),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset('assets/004_shopping_basket.png'),
            ),
          ]),
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text('Cart',
                style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartList.length,
              itemBuilder: (BuildContext context, int index) {
                return cartList[index];
              },
            ),
          ),
          Container(
              color: Color(0xFFF9F9F9),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Total Amount',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Text('41.90  EGP',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ButtonTheme(
                      height: 60,
                      minWidth: double.infinity,
                      child: FlatButton(
                          color: Color(0xFFFFDE0A),
                          onPressed: () => {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            'PROCEED TO CHECK-OUT',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF454F63)),
                          )),
                    ),
                  ),
                ]),
              )),
        ]),
      ),
    );
  }
}
