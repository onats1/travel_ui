import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelui/models/activity_model.dart';
import 'package:travelui/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  Destination destination;

  DestinationScreen({this.destination});

  @override
  State<StatefulWidget> createState() => _DestinationState();
}

class _DestinationState extends State<DestinationScreen> {

  @override
  Widget build(BuildContext context) {
    List<Activity> activities = widget.destination.activities;

    // TODO: implement build
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0)
                  ]),
              child: Hero(
                tag: widget.destination.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
                  child: Image(
                    image: AssetImage(widget.destination.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    iconSize: 30.0,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Icon(
                        Icons.filter_list,
                        size: 30.0,
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: 15.0,
              bottom: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.destination.city,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 10.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        widget.destination.country,
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 20.0,
              bottom: 20.0,
              child: Icon(
                Icons.location_on,
                size: 30.0,
                color: Colors.white70,
              ),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    height: 150.0,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 25.0, right: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 110, right: 10.0, top: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          activities[index].name,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50.0,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "\$${widget.destination.activities[index].price}",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Per Person",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10.0),
                                          )
                                        ],
                                      )
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                  Text(
                                    widget.destination.activities[index].type,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.center,
                                        width: 70.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).accentColor,
                                          borderRadius: BorderRadius.circular(12.0)
                                        ),
                                        child: Text(activities[index].startTimes[0]),
                                      ),
                                      SizedBox(width: 5.0),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 70.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).accentColor,
                                            borderRadius: BorderRadius.circular(12.0)
                                        ),
                                        child: Text(activities[index].startTimes[1]),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          left: 5.0,
                          child: ClipRRect(
                            child: Image(
                              image: AssetImage(activities[index].imageUrl),
                              height: 130.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    ));
  }
}
