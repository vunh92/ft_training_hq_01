import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage("Bài 01"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(this.title);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      body: Container(
          height: 100,
          width: 100,
          child: Image.network(
            "https://lh3.googleusercontent.com/C5W6dHX0TCIv8tO2nPiwkAZtwJEzxr6gyCySXC0hklj8G3lPP-EEeMliwAb28GF37PUeKpvG=w640-h400-e365-rj-sc0x00ffffff"
          ),
      ),
    );
  }
}
