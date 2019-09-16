import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FirstView extends StatelessWidget {
  @override
  final primaryColor = const Color(0xFF75A2EA);

  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return
      Scaffold(
        body: Container(
          width: _width,
          height: _height,
          color: primaryColor,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: _height * .10,),
                  Text("Welcome", style: TextStyle(fontSize: 44, color: Colors.white)),
                  SizedBox(height: _height * .10,),
                  AutoSizeText(
                    "Let's start planning your next trip",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),

                  SizedBox(height: _height * .10,),
                  RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                      child: Text("Get Started", style: TextStyle(color: primaryColor, fontSize: 28, fontWeight: FontWeight.w300),),
                    ),

                      onPressed: () {},

                  ),
                  SizedBox(height: _height * .15,),
                  FlatButton(
                    child: Text("Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 25),),
                    onPressed: () {},
                  )

                ],
              ),

            ),
          ),
        ),

      );
  }
}
