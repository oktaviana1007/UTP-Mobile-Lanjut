import 'package:flutter/material.dart';
import 'drakor.dart';
import 'Profile.dart';

void main() {
  runApp(new MaterialApp(
    title: "KDRAMA",
    theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
    home: new awal(),
  ));
}

class awal extends StatefulWidget {
  @override
  _awalState createState() => _awalState();
}

class _awalState extends State<awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu")
      ),
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: ListView(
          children : <Widget>[
            SizedBox(
                    height: 10.0,
                  ),
            RaisedButton(
              onPressed:(){
                Navigator.push( 
                      context,
                       MaterialPageRoute(
                          builder: (context) => Home()));
               },
              child : Text("LIST DRAMA "),
            ),
            SizedBox(
                    height: 10.0,
                  ),
            RaisedButton(
              onPressed:(){
                Navigator.push( 
                      context,
                       MaterialPageRoute(
                          builder: (context) => Profil()));
               },
              child : Text("TENTANG APLIKASI"),
            )
          ]
        ),
      );
  }
}