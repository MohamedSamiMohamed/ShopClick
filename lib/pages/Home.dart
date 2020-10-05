import 'package:flutter/material.dart';
import 'package:shop_click/Widgets/SearchingWidget.dart';
import 'package:shop_click/Controllers/NewsController.dart';

import 'package:shop_click/Widgets/BottomNavigationWidget.dart';
import 'package:shop_click/Widgets/NewsItemWidget.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final NewsController newsController = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.list,
              color: Colors.black,
            ),
            onPressed: () => {},
          ),
          actions: [
            Container(
              height: 70,
              width: 70,
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Stack(children: [
                  IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                      onPressed: () => {}),
                  Positioned(
                    bottom: 0,
                    child: Text(
                      'Notfications',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontStyle: FontStyle.italic,
                          fontSize: 7),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              height: 70,
              width: 70,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Stack(children: [
                  IconButton(
                      icon: Icon(Icons.shopping_bag_outlined,
                          color: Colors.black),
                      onPressed: () => {}),
                  Positioned(
                    bottom: 0,
                    child: Text(
                      'My Cart',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontStyle: FontStyle.italic,
                          fontSize: 7),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Back',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Obx(
                        () => Text('${newsController.news.value.name},',
                            style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 22,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                    icon: Icon(Icons.person_outline),
                    color: Colors.black,
                    iconSize: 25,
                    onPressed: () => {}),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: Color(0xFFF6F6F6),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 25, 16, 22),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Latest news',
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
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
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
                        ),
                        FutureBuilder(
                            future: newsController.getNews(Get.arguments),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Obx(
                                  () => Container(
                                    height: 220,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: newsController
                                            .news.value.news.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return NewsItem(
                                              time: newsController
                                                  .news.value.news[index].data,
                                              title: newsController
                                                  .news.value.news[index].title,
                                              body: newsController.news.value
                                                  .news[index].description,
                                              image: 'assets/download.png');
                                        }),
                                  ),
                                );
                              } else {
                                return CircularProgressIndicator(
                                  backgroundColor: Color(0xFF000000),
                                );
                              }
                            }),
                      ],
                    ),
                  ),
                ),
                Searching(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 20, right: 20),
              child: ButtonTheme(
                height: 50,
                minWidth: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 4,
                  onPressed: () => {},
                  child: Text(
                    'PLACE NEW ORDER',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF333333), fontSize: 16),
                  ),
                  color: Color(0xFFFFDE0A),
                ),
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 7,
        child: BottomNavigation(),
      ),
    );
  }
}
