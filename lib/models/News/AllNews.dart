import 'News.dart';

class AllNews {
  String name;
  List<News> news;

  AllNews({this.name, this.news});

  AllNews.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['news'] != null) {
      news = new List<News>();
      json['news'].forEach((newsItem) {
        news.add(new News.fromJson(newsItem));
      });
    }
  }
}
