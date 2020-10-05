import 'package:flutter/material.dart';
import 'package:shop_click/Widgets/OrderCard.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text('Place Order',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22.0),
                child: IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.search, size: 35),
                  color: Color(0xFF000000),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 17),
            child: Text('Showing (8) Distributer',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              child: ListView(
                shrinkWrap: true,
                children: [
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'asdsad',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'asdsad',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'asdsad',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'Abu Dawood World best brand Partner ',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'Abu Dawood World best brand Partner ',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'asdsad',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'Abu Dawood World best brand Partner ',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'Abu Dawood World best brand Partner ',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'Abu Dawood World best brand Partner',
                    image: 'aaa',
                  ),
                  OrderCard(
                    distributor: 'Abu Dawood',
                    title: 'Abu Dawood World best brand Partner ',
                    image: 'aaa',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
