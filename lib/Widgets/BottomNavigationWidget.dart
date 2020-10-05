import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_click/pages/Orders.dart';
import 'package:shop_click/pages/Products.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      iconSize: 28,
      selectedItemColor: Colors.black,
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), label: 'My Orders'),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Profile')
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            {
              Get.to(Orders());
            }
            break;
          case 1:
            Get.to(Products());
            break;
          case 2:
            Get.to(Orders());
            break;
          case 3:
            Get.to(Orders());
            break;
        }
      },
    );
  }
}
