import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final heroTag, name;

  SecondPage({this.heroTag, this.name});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondPageState(heroTag: heroTag, name: name);
  }
}

class _SecondPageState extends State<SecondPage> {
  final heroTag, name;

  _SecondPageState({this.heroTag, this.name});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.black),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15.0),
              width: MediaQuery.of(context).size.width,
              height: 900.0,
              child: Hero(
                tag: heroTag,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          image: DecorationImage(
                              image: AssetImage(heroTag), fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Color(0xFFff8c00),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "A developer who loves minimal design",
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      margin:
                          EdgeInsets.only(top: 32.0, left: 18.0, right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "353",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black),
                              ),
                              Text(
                                "Photos",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "124",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black),
                              ),
                              Text(
                                "Videos",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "74K",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black),
                              ),
                              Text(
                                "Likes",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Photos",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.black),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFFff8c00),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.0,
                    ),

                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            imageContainer("assets/nepal_1.jpeg"),
                            SizedBox(height: 15.0),
                            imageContainer("assets/nepal_2.jpeg"),
                          ],
                        ),
                        SizedBox(width: 15.0),
                        Column(
                          children: <Widget>[
                            imageContainer("assets/nepal_3.jpeg"),
                            SizedBox(height: 15.0),
                            imageContainer("assets/nepal_4.jpeg"),
                          ],
                        ),
                        SizedBox(width: 15.0),
                        Column(
                          children: <Widget>[
                            imageContainer("assets/nepal_2.jpeg"),
                            SizedBox(height: 15.0),
                            imageContainer("assets/nepal_1.jpeg"),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 32.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Videos",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.black),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFFff8c00),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 32.0),
                        height: 250.0,
                        width: (MediaQuery.of(context).size.width - 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(image: AssetImage("assets/nepal_4.jpeg"), fit: BoxFit.cover),
                        )),

                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget imageContainer(String image) {
    return Container(
        height: 100.0,
        width: (MediaQuery.of(context).size.width - 60) / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ));
  }
}
