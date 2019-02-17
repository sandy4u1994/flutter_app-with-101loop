import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'homePage.dart';


void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      routes: <String, WidgetBuilder>{

       '/home': (BuildContext context)=> new HomePage()

      },
      );
  }
}

