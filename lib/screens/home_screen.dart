import 'package:flutter/material.dart';
import 'package:social_ui_challenge/screens/second_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EXPLORE",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(child: Drawer()),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                Container(
                  height: 75.0,
                  width: 75.0,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Color(0xFFFF8C00),
                        maxRadius: 35.5,
                        child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Add To",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                listItem(
                    "assets/people_1.jpeg", "Rossaile", "assets/people_1.jpeg"),
                SizedBox(
                  width: 20.0,
                ),
                listItem(
                    "assets/people_2.jpeg", "Vincent", "assets/people_2.jpeg"),
                SizedBox(
                  width: 20.0,
                ),
                listItem(
                    "assets/nepal_1.jpeg", "Rossaile", "assets/nepal_1.jpeg"),
                SizedBox(
                  width: 20.0,
                ),
                listItem(
                    "assets/nepal_2.jpeg", "Rossaile", "assets/nepal_2.jpeg"),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  imageContainerSmall(
                      "assets/nepal_1.jpeg",
                      "I like the way to place items to show more",
                      "assets/people_1.jpeg",
                      "Mona Hill",
                      "10:00PM"),
                  imageContainerLarge(
                      "assets/nepal_2.jpeg",
                      "I like the way to place items to show more",
                      "assets/people_2.jpeg",
                      "Ramesh Giri",
                      "12:00PM"),
                ],
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  imageContainerLarge(
                      "assets/nepal_3.jpeg",
                      "I like the way to place items to show more",
                      "assets/people_2.jpeg",
                      "Ramesh Giri",
                      "12:00PM"),
                  imageContainerSmall(
                      "assets/nepal_4.jpeg",
                      "I like the way to place items to show more",
                      "assets/people_1.jpeg",
                      "Mona Hill",
                      "10:00PM"),
                ],
              ),
              SizedBox(width: 10.0),
            ],
          )
        ],
      ),
    );
  }

  Widget listItem(String image, String name, String heroTag) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SecondPage(heroTag: heroTag, name:name )),
        );
      },
      child: Hero(
        tag: heroTag,
        child: Column(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(37.5),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              name,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageContainerSmall(String descImage, String title,
      String profileImage, String name, String time) {
    return Container(
      width: (MediaQuery.of(context).size.width - 30) / 2,
      height: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(descImage), fit: BoxFit.cover),
              )),
          SizedBox(height: 15.0),
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 16.0, wordSpacing: 2.0),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(profileImage), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(color: Color(0xFFff8c00), fontSize: 16.0),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget imageContainerLarge(String descImage, String title,
      String profileImage, String name, String time) {
    return Container(
      width: (MediaQuery.of(context).size.width - 30) / 2,
      height: 400.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(descImage), fit: BoxFit.cover),
              )),
          SizedBox(height: 10.0),
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 16.0, wordSpacing: 2.0),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(profileImage), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(color: Color(0xFFff8c00), fontSize: 16.0),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
