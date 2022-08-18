import 'package:flutter/material.dart';

import '../screens/details.dart';

class VerticalPlaceItem extends StatelessWidget {
  final Map place;

  VerticalPlaceItem({required this.place});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        child: Container(
          height: 80.0,
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "${place["img"]}",
                    height: 70.0,
                    width: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 80.0,
                width: MediaQuery.of(context).size.width - 130.0,
                child: ListView(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${place["name"]}",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(width: 13.0),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 13.0,
                            color: Colors.blueGrey[300],
                          ),
                          SizedBox(width: 3.0),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "${place["location"]}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                                color: Colors.blueGrey[300],
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${place["price"]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Details();
              },
            ),
          );
        },
      ),
    );
  }
}
