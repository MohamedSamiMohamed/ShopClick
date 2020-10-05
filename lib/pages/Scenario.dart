import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_click/Controllers/ScenarioController.dart';
import 'package:get/get.dart';
import 'package:shop_click/pages/Home.dart';
import 'package:shop_click/models/Flow.dart' as flow;

class Scenario extends StatelessWidget {
  final ScenarioController controller = Get.put(ScenarioController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/shop-click-logo_9583-3 copy.png'),
              SizedBox(
                height: 52,
              ),
              Text(
                'select Application scenario',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 20, left: 20, bottom: 40, top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: DropDpownList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: ButtonTheme(
                  height: 50,
                  minWidth: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 4,
                    onPressed: () =>
                        {Get.to(Home(), arguments: controller.position.value)},
                    child: Text(
                      'GO',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF333333), fontSize: 16),
                    ),
                    color: Color(0xFFFFDE0A),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DropDpownList extends GetView<ScenarioController> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<flow.Flow>>(
        future: controller.getFLows(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Obx(() => DropdownButtonHideUnderline(
                    child: DropdownButton(
                  hint: Text('Choose a product'),
                  autofocus: true,
                  value: controller.chosenProduct.value,
                  isExpanded: true,
                  onChanged: (var item) {
                    controller.setChosenProduct(item);
                  },
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 20,
                  dropdownColor: Color(0xFFD9D8D8),
                  items: controller.flows.map<DropdownMenuItem>((var item) {
                    return DropdownMenuItem(
                      value: item.flow,
                      child: Text(item.flow),
                    );
                  }).toList(),
                )));
          } else {
            return CircularProgressIndicator(
              backgroundColor: Color(0xFF000000),
            );
          }
        });
  }
}
