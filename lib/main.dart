import 'package:flutter/material.dart';
import 'package:travel_budget/home_widget.dart';
import 'views/first_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Travel Budget App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
//      home: Home(),
    home: FirstView(),

    );
  }
}