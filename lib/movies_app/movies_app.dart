import 'package:flutter/material.dart';
import 'package:movies_app/main.dart';

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'homePage',),
    );
  }
}