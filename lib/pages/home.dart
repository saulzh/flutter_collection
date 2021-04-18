import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_collection/const/style.dart';
import 'package:flutter_collection/pages/canvas.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> homeArray = [
    '动画',
    'canvas',
    '文件分享',
    '微信分享',
    '图片裁剪',
    '生成图片',
    '音频',
    '视频',
    '手势',
  ];

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    var home = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter collection'),
        ),
        body: body(context),
      ),
    );
    return home;
  }

  Widget body(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: homeArray.length,
        itemBuilder: (BuildContext context, int index) {
          String item = homeArray[index];
          return homeItem(context, item);
        },
      ),
    );
  }

  Widget homeItem(BuildContext context, String item) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(item),
    );
  }
}
