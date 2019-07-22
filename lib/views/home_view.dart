import 'package:flutter/material.dart';
import 'package:travel_budget/models/Trip.dart';
import 'package:intl/intl.dart';


class HomeView extends StatelessWidget {
  @override
  final List<Trip> tripsList = [
    Trip("New York", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("Boston", DateTime.now(), DateTime.now(), 400.00, "Train"),
    Trip("Austin", DateTime.now(), DateTime.now(), 600.00, "Plane"),
    Trip("Washington DC", DateTime.now(), DateTime.now(), 800.00, "Car"),
    Trip("Sacremento", DateTime.now(), DateTime.now(), 200.00, "Bicycle"),
    Trip("Minneapolis", DateTime.now(), DateTime.now(), 600.00, "Snow Shoes"),

  ];

  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: tripsList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];

    return new Container(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
              child: Row(
                children: <Widget>[
                  Text(trip.title, style: new TextStyle(fontSize: 30.0),),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
              child: Row(
                children: <Widget>[
                  Text(
                      "${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}"),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Text("\$${trip.budget.toStringAsFixed(2)}", style: new TextStyle(fontSize: 35.0),),
                  Spacer(),
                  Icon(Icons.home),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}




