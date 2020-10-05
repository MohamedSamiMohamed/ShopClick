class News {
  String title;
  String description;
  String data;
  String image;

  News({this.title, this.description, this.data, this.image});

  News.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    data = json['data'];
    image = json['image'];
  }
}