class Distributor {
  int id;
  String title;

  Distributor({this.id, this.title});

  Distributor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }
}
