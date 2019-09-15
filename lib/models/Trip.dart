//import 'package:cloud_firestore/cloud_firestore.dart';



class Trip {
  String title;
  DateTime startDate;
  DateTime endDate;
  double budget;
  String travelType;

  Trip(this.title, this.startDate, this.endDate, this.budget, this.travelType);


  Map<String, dynamic> toJson() => {
      'Title' : title,
      'Starting Date' : startDate,
      'Ending Date' : endDate,
    'Budget' : budget,
    'Travel Type' : travelType,


  };
}


//class crudMethods {
//
//  getData() async => await Firestore.instance.collection('Trips').getDocuments();
//
//
//}

//class fbTrip {
//  String title;
//  DateTime startDate;
//  DateTime endDate;
//  double budget;
//  String travelType;
//
//  fbTrip(this.title, this.startDate, this.endDate, this.budget, this.travelType);
//
//}
