import 'Distributor.dart';

class Flow {
  String flow;
  List<Distributor> distributors;

  Flow({this.flow, this.distributors});

  Flow.fromJson(Map<String, dynamic> json) {
    flow = json['flow'];
    if (json['distributors'] != null) {
      distributors = new List<Distributor>();
      json['distributors']
          .forEach((item) => distributors.add(new Distributor.fromJson(item)));
    }
  }
}
