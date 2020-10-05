import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop_click/models/News/AllNews.dart';
import 'package:shop_click/models/News/News.dart';

class NewsController extends GetxController {
  var userName = ''.obs;
  var news = new AllNews().obs;

  void setUserName(var userName) {
    this.userName.value = userName;
    update();
  }

  Future<String> getNewsJson() async {
    return rootBundle.loadString('assets/home.json');
  }

  Future<AllNews> getNews(int position) async {
    final mapData =
        jsonDecode(await getNewsJson()).cast<Map<String, dynamic>>();
    print(mapData[position]);
    news.value = new AllNews.fromJson(mapData[position]);
    update();
    return news.value;
  }
}
