import 'package:flutter/material.dart';
import 'package:travel_budget/models/Trip.dart';
import 'package:travel_budget/views/new_trips/budget_view.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;
import 'package:intl/intl.dart';
import 'dart:async';

class NewTripDateView extends StatefulWidget {
  final Trip trip;

  NewTripDateView({Key key, @required this.trip}) : super(key: key);

  @override
  _NewTripDateViewState createState() => _NewTripDateViewState();
}

class _NewTripDateViewState extends State<NewTripDateView> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

  Future _displayDateRangePicker(BuildContext context) async {
    final List<DateTime> picked  = await DateRangePicker.showDatePicker(
        context: context,
        initialFirstDate: _startDate,
        initialLastDate: _endDate,
        firstDate: new DateTime(DateTime.now().year -10),
        lastDate: new DateTime(DateTime.now().year +10),

    );
    if (picked != null && picked.length ==2 ) {
      setState(() {
        _startDate = picked[0];
        _endDate = picked[1];
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Create Trip - Date'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Location ${widget.trip.title}"),
                RaisedButton (
                    child: Text("Select Dates"),
                    onPressed: () async {
                      await _displayDateRangePicker(context);
                  },

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                      Text("Starting Date"),
                      Text("Ending Date"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(DateFormat("MM/dd/yyyy").format(_startDate)),
                    Text(DateFormat("MM/dd/yyyy").format(_endDate)),
                  ],
                ),

                RaisedButton(
                  child: Text("Continue"),
                  onPressed: () {
                    widget.trip.startDate = _startDate;
                    widget.trip.endDate = _endDate;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewTripBudgetView(trip: widget.trip)),
                    );
                  },
                )
              ],
            )));
  }
}
