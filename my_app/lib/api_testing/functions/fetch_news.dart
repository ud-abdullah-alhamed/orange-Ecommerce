import 'dart:convert';

import 'package:my_app/model/news_model.dart';
import 'package:http/http.dart';

Future<News> fetchNews() async {
  final response = await get(Uri.parse(
      'https://newsapi.org/v2/everything?q=tesla&from=2023-10-03&sortBy=publishedAt&apiKey=API_KEY'));
  if (response.statusCode == 200) {
    return News.fromJason(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('filed load');
  }
}
