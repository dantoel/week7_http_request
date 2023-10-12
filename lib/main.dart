import 'package:flutter/material.dart';
import 'package:week7_http_request/pages/movie_list.dart';
import 'package:week7_http_request/models/movie.dart';
import 'package:week7_http_request/service/http_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieList();
  }
}
