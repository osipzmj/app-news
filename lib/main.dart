import 'package:flutter_news_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News API Example Project",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
