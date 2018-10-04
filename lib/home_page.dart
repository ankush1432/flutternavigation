import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      
      body: new Stack(
      fit: StackFit.expand,
        children: <Widget>[
         new Image(
      image: AssetImage("assets/splash.jpeg"),
      fit: BoxFit.cover,
      color: Colors.green,
      colorBlendMode: BlendMode.darken,
    ),
        ],
      
      ),
      
    );
  }
}