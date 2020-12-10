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
            Container(
              height: MediaQuery.of(context).size.height/3,
              color: Colors.blueAccent,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 80,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // alignment: AlignmentDirectional.bottomCenter,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: double.infinity,
              color: Colors.grey,
              child: Image.network(
                  "https://lh3.googleusercontent.com/C5W6dHX0TCIv8tO2nPiwkAZtwJEzxr6gyCySXC0hklj8G3lPP-EEeMliwAb28GF37PUeKpvG=w640-h400-e365-rj-sc0x00ffffff"
              ),
            ),
            Container(
              height: 100,
              // height: MediaQuery.of(context).size.height/3,
              width: double.infinity,
              color: Colors.green,
            ),
          ],
        )

    );
  }
}

/*
https://img.freepik.com/free-photo/gold-glitter-powder-splash-background_3247-103.jpg?size=626&ext=jpg
https://images.all-free-download.com/images/graphiclarge/red_christmas_horizontal_background_310556.jpg
https://cdn4.vectorstock.com/i/1000x1000/87/23/abstract-blue-background-with-light-horizontal-vector-21898723.jpg
https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX3278279.jpg
https://cdn4.vectorstock.com/i/1000x1000/20/08/horizontal-bright-color-background-vector-17302008.jpg
https://image.freepik.com/free-vector/pastel-bokeh-background-horizontal_25819-688.jpg
https://img.wallpapersafari.com/desktop/1680/1050/11/12/Nkx825.jpg
https://i.pinimg.com/originals/42/da/a3/42daa3e3a4965ac27c7003f6fb8a11ee.jpg
https://i.pinimg.com/originals/2b/96/d4/2b96d45ea17cacdbeea94270aceefc20.jpg
 */