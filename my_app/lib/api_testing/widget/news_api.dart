import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:my_app/api_testing/functions/fetch_news.dart';
import 'package:my_app/model/news_model.dart';

Future<Map<String, dynamic>> fetchData() async {
  final response = await get(Uri.parse(
      "https://newsapi.org/v2/everything?q=tesla&from=2023-10-03&sortBy=publishedAt&apiKey=API_KEY"));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON
    Map<String, dynamic> data = json.decode(response.body);
    return data;
  } else {
    // If the server did not return a 200 OK response, throw an exception.
    throw Exception('Failed to load data');
  }
}

class ApiExample extends StatefulWidget {
  const ApiExample({super.key});

  @override
  State<ApiExample> createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  late Future<News> futureNews;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureNews = fetchNews();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text(snapshot.data.name)),
                  Center(child: Text(snapshot.data.name)),
                  Text('Status: ${data["status"]}'),
                  Text('Total Results: ${data["totalResults"]}'),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
