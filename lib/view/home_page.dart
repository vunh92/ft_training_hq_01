import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage(this.title);
  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        // alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blueAccent ,
          ),
          Container(
            alignment: AlignmentDirectional.bottomCenter,
            height: 40,
            width: double.infinity,
            color: Colors.deepPurpleAccent ,
          )
        ],
      )
      /*Container(
        height: 100,
        width: 100,
        child: Image.network(
            "https://lh3.googleusercontent.com/C5W6dHX0TCIv8tO2nPiwkAZtwJEzxr6gyCySXC0hklj8G3lPP-EEeMliwAb28GF37PUeKpvG=w640-h400-e365-rj-sc0x00ffffff"
        ),
      ),*/
    );
  }
}