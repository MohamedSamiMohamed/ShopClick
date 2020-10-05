import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String productName;
  final String sellerName;
  final String productPrice;
  final String deliveryEstimation;
  final String quantity;

  const CartItem(
      {this.image,
      this.productName,
      this.productPrice,
      this.deliveryEstimation,
      this.quantity,
      this.sellerName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Image.asset(
              '$image',
              height: 50,
              width: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Text('$productName',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xFF323232))),
                ),
                Text(
                  'Seller: $sellerName',
                  style: TextStyle(
                      color: Color(0xFF555555),
                      fontStyle: FontStyle.italic,
                      fontSize: 14),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 11.0),
                      child: Text('Qty: ',
                          style: TextStyle(
                              fontSize: 14, fontStyle: FontStyle.italic)),
                    ),
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
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
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
                            '$quantity',
                            style: TextStyle(color: Color(0xFF121212)),
                          ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text('$productPrice',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF619F42),
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 5),
                Text('Delivery Estimate:$deliveryEstimation',
                    style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 14,
                        fontStyle: FontStyle.italic)),
                Text('business days',
                    style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 14,
                        fontStyle: FontStyle.italic)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xFFDDDDDD),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
