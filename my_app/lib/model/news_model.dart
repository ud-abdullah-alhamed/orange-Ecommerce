class News {
  late String name;
  late String author;
  late String title;
  late String description;
  late String url;
  late String imageUrl;
  late String date;
  late String content;

  News(
      {required this.name,
      required this.title,
      required this.author,
      required this.description,
      required this.url,
      required this.imageUrl,
      required this.content,
      required this.date});

  factory News.fromJason(Map<String, dynamic> jason) {
    return News(
        name: jason['name'],
        title: jason['title'],
        author: jason['author'],
        description: jason['description'],
        url: jason['url'],
        imageUrl: jason['urlToImage'],
        content: jason['content'],
        date: jason['publishedAt']);
  }
}
