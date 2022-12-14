import 'package:flutter/material.dart';
import 'package:my/screens/New.dart';
import 'package:my/screens/new1.dart';
import 'package:my/util/places.dart';
import 'package:my/widgets/icon_badge.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          bottomNavigationBar: const TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.green,
            labelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
              ),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      buildSlider(),
                      SizedBox(height: 20),
                      ListView(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "${places[0]["name"]}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                  maxLines: 2,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.bookmark,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 14,
                                color: Colors.blueGrey[300],
                              ),
                              SizedBox(width: 3),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "${places[0]["location"]}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.blueGrey[300],
                                  ),
                                  maxLines: 1,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "${places[0]["price"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Details",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "${places[0]["details"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Icon(Icons.directions_car),
              new1(),
            ],
          ),
        ),
      ),
    );
  }

  buildSlider() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places[index];

          return Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "${place["img"]}",
                height: 250.0,
                width: MediaQuery.of(context).size.width - 40.0,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
