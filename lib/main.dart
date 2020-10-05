import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_click/pages/Home.dart';
import 'package:shop_click/pages/Scenario.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/', page: () => Scenario()),
      GetPage(name: '/home', page: () => Home())
    ],
  ));
}
