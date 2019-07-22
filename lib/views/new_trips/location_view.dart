import 'package:flutter/material.dart';
import 'package:travel_budget/models/Trip.dart';
import 'package:travel_budget/views/new_trips/date_view.dart';
class NewTripLocationView extends StatelessWidget {
  final Trip trip;

  NewTripLocationView({Key key, @required this.trip}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController _titleControler = new TextEditingController();
    _titleControler.text = trip.title;

    return Scaffold(
        appBar: AppBar(
          title: Text('Create Trip - Location'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter a Location"),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: _titleControler,
                autofocus: true,
              ),
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: () {
                trip.title = _titleControler.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewTripDateView(trip: trip)),
                );
              },
            )
          ],
        )));
  }
}
