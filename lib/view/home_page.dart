import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage(this.title);
  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var imageList;
  var vondorList;
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    imageList = _createImageList();
    vondorList = _createVendorList();
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
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: PageView(
                              controller: controller,
                              children: List.generate(
                                imageList.length,
                                (index) => Card(
                                  color: Colors.black54,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Image.network(
                                      imageList[index],
                                      fit: BoxFit.fitWidth,
                                    ),
                                  )
                                )
                              )
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: imageList.length,
                            effect: WormEffect(dotWidth: 25, dotHeight: 3, spacing: 4, radius: 25, activeDotColor: Colors.red),
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
              child: Column(
                children: <Widget>[
                  Container(
                    height: 30,
                    color: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            child: Text(
                              "CONNECTED VENDORS",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left, )
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: FlatButton(
                            padding: const EdgeInsets.only(right: 0),
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "More... CONNECTED VENDORS",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "View More",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontStyle: FontStyle.italic,
                                    fontWeight:FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Icon(Icons.navigate_next, color: Colors.black54,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: vondorList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image.network(
                                vondorList[index]
                            )
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              color: Colors.blue,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 30,
                    color: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                              child: Text(
                                "BOUGHT PRODUCTS",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left, )
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: FlatButton(
                            padding: const EdgeInsets.only(right: 0),
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "More... BOUGHT PRODUCTS",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "View More",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontStyle: FontStyle.italic,
                                    fontWeight:FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Icon(Icons.navigate_next, color: Colors.black54,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: vondorList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              child: Image.network(
                                  vondorList[index]
                              )
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      /*bottomNavigationBar: BottomNavigationBar(
          items: null,
      ),*/
    );
  }

  List<String> _createImageList(){
    List<String> list = new List();
    list.add("https://img.freepik.com/free-photo/gold-glitter-powder-splash-background_3247-103.jpg?size=626&ext=jpg");
    list.add("https://images.all-free-download.com/images/graphiclarge/red_christmas_horizontal_background_310556.jpg");
    list.add("https://cdn4.vectorstock.com/i/1000x1000/87/23/abstract-blue-background-with-light-horizontal-vector-21898723.jpg");
    list.add("https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX3278279.jpg");
    list.add("https://cdn4.vectorstock.com/i/1000x1000/20/08/horizontal-bright-color-background-vector-17302008.jpg");
    list.add("https://image.freepik.com/free-vector/pastel-bokeh-background-horizontal_25819-688.jpg");
    list.add("https://img.wallpapersafari.com/desktop/1680/1050/11/12/Nkx825.jpg");
    list.add("https://i.pinimg.com/originals/42/da/a3/42daa3e3a4965ac27c7003f6fb8a11ee.jpg");
    list.add("https://i.pinimg.com/originals/2b/96/d4/2b96d45ea17cacdbeea94270aceefc20.jpg");
    return list;
  }

  List<String> _createVendorList(){
    List<String> list = new List();
    list.add("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2016/02/10/21/57/heart-1192662__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2016/09/08/22/43/books-1655783__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2018/08/21/23/29/fog-3622519__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2013/07/25/13/01/stones-167089__340.jpg");
    list.add("https://cdn.pixabay.com/photo/2013/08/28/12/03/plumage-176723__340.jpg");
    return list;
  }


}