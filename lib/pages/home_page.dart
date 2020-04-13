import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelui/pages/widgets/destination_header.dart';
import 'package:travelui/pages/widgets/hotels_list.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  int _selectedIndex = 0;
  int _currentIndex = 0;

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: _selectedIndex == index ? Theme.of(context).accentColor: Color(0xFFE7EBEE)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  "What would you like to do?",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map((MapEntry entry) => _buildIcon(entry.key))
                    .toList(),
              ),
              SizedBox(height: 20.0,),
              DestinationHeader(),
              SizedBox(height: 20.0,),
              HotelsList()
            ],
          ),
        ),
      ), // This tra
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 35.0,),
            title: SizedBox.shrink()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 35.0,),
            title: SizedBox.shrink()
          ),
          BottomNavigationBarItem(
            title: SizedBox.shrink(),
            icon: CircleAvatar(
              radius: 17.5,
              backgroundColor: Theme.of(context).primaryColor,
            )
          )
        ],
      ),// iling comma makes auto-formatting nicer for build methods.
    );
  }
}


