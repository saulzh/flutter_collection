import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    var home = MaterialApp(
      home: Scaffold(
        body: Container(
          child: Text('home'),
        ),
      ),
    );
    return home;
  }
}
