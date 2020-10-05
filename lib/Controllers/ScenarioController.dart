import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop_click/models/Flow.dart';

class ScenarioController extends GetxController {
  List<Flow> flows = new List<Flow>().obs;
  var chosenProduct = ''.obs;
  var position = 0.obs;

  void setPosition(var position) {
    this.position.value = position;
    print(this.position.value);
    update();
  }

  void setChosenProduct(var product) {
    this.chosenProduct.value = product;
    for (final element in flows) {
      if (element.flow == product) {
        setPosition(flows.indexOf(element));
        break;
      }
    }

    update();
  }

  Future<String> getFlowsJson() async {
    return rootBundle.loadString('assets/flows.json');
  }

  Future<List<Flow>> getFLows() async {
    String data = await getFlowsJson();
    final mapData = jsonDecode(data).cast<Map<String, dynamic>>();
    mapData.forEach((flowItem) {
      flows.add(new Flow.fromJson(flowItem));
      update();
    });
    setChosenProduct(flows[0].flow);
    return flows;
  }
}
