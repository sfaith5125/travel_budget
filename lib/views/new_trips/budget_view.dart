import 'package:flutter/material.dart';
import 'package:travel_budget/models/Trip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewTripBudgetView extends StatelessWidget {
  final db = Firestore.instance;

  final Trip trip;

  NewTripBudgetView({Key key, @required this.trip}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Create Trip - Budget'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Finish"),
                    Text("Location ${trip.title}"),
                    Text("Starting Date ${trip.startDate}"),
                    Text("Ending Date ${trip.endDate}"),

                  ],
                ),

                RaisedButton(
                  child:
                  Text("Finish"),
                  onPressed: () async {
                    await db.collection("Trips").add(trip.toJson());
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                )
              ],
            )));
  }
}