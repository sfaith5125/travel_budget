import 'package:flutter/material.dart';
import 'package:travel_budget/pages.dart';
import 'package:travel_budget/home_view.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override

  int _currentIndex = 0;
  final List<Widget> _children = [HomeView(),ExplorePage(),PastTripsPage()];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Budget App"),
      ),
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.explore),
              title: new Text("Explore")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.history),
              title: new Text("Past Trips")
          ),
        ],
          ),
    );
  }
  void onTapTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}