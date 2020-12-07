import 'package:flutter/material.dart';
import 'package:ft_training_hq_01/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage("Bài 01"),
    );
  }
}