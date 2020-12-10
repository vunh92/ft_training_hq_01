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
          centerTitle: true,
          title: Text(widget.title),
          backgroundColor: Colors.red,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Icon(Icons.shopping_cart, color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Icon(Icons.notifications, color: Colors.white,),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: TextFormField(
                            // style: TextStyle(fontSize: 12, color: Colors.black),
                            decoration: InputDecoration(
                                hintText: "search",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2, color: Colors.red),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                prefixIcon: Icon(Icons.search,)
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text("data"),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              color: Colors.blue,
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Image.network(
                    "https://lh3.googleusercontent.com/C5W6dHX0TCIv8tO2nPiwkAZtwJEzxr6gyCySXC0hklj8G3lPP-EEeMliwAb28GF37PUeKpvG=w640-h400-e365-rj-sc0x00ffffff"
                ),
              ),
            ),
            Container(
              height: 2,
              color: Colors.blue,
            ),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        )

    );
  }
}