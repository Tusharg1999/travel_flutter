import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.magnet,
    FontAwesomeIcons.biking,
    FontAwesomeIcons.apple
  ];
  var _selectedIndex = 0;

  Widget _iconWidget(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          print(index);
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color:  _selectedIndex==index?Theme
                  .of(context)
                  .accentColor:Color(0xFFE7EBEE),
              borderRadius: BorderRadius.circular(30.0)),
          child: Icon(
            _icons[index],
            size: 30,
            color: Theme
                .of(context)
                .primaryColor,
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                "What would you like to find?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((var map) => _iconWidget(map.key))
                  .toList(),
            ),
            Column(
              children: <Widget>[
                Row()
              ],
            )
          ],
        ),
      ),
    );
  }
}
