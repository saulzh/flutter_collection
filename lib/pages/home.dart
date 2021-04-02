import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_collection/const/style.dart';

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
            child: Column(
          children: [
            header(context),
          ],
        )),
      ),
    );
    return home;
  }

  Widget header(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey,
      )),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Icon(
              Icons.thumb_up,
              color: Colors.redAccent,
            ),
          ),
          Container(
            child: Text('FLutter web test'),
          ),
        ],
      ),
    );
  }
}
