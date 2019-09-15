import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:travel_budget/models/Trip.dart';
//import 'package:async/async.dart';

//class ExplorePage extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//
//    // This code is the original
//     //   return Container(
//      //    color: Colors.green,);
//  }
//}

//ExplorePage

class ExplorePage extends StatefulWidget {

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
//        appBar: AppBar(
//          title: Text("Test"),
//        ),
        body: Center(
          child: Container(
            child: StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection('Trips')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                return new ListView(
                children: snapshot.data.documents.map(
      (DocumentSnapshot document){
        return new Text(document['Title']);}).toList(),
      );



//                if (snapshot.hasError)
//                  return new Text('Error: ${snapshot.error}');
//                switch (snapshot.connectionState) {
//                  case ConnectionState.waiting:
//                    return new Text('Loading...');
//                  default:
//                    return new ListView(
//                      children: snapshot.data.documents
//                          .map((DocumentSnapshot document) {
//                        return new Text(document['Title']);
//                      }).toList(),
//                    );
                }

            ),
          ),
        ),
//        bottomSheet: Center(
//          child: Container(
//            child: Text("Bottom"),
//          ),
//        ),
      );
    }
}






//  Widget build(BuildContext context) {
//    StreamBuilder(
//        stream: Firestore.instance.collection('Trips').snapshots(),
//        builder: context, snapshot ){
//
//    }
//  }
