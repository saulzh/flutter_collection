import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_collection/const/style.dart';
import 'package:flutter_collection/pages/canvas.dart';
import 'package:flutter_collection/pages/gesture.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<_HomeItem> homeItems = [
    _HomeItem('animation', '动画'),
    _HomeItem('canvas', 'canvas'),
    _HomeItem('file', '文件处理'),
    _HomeItem('share', '分享'),
    _HomeItem('image', '图片处理'),
    _HomeItem('audio', '音频'),
    _HomeItem('vedio', '视频'),
    _HomeItem('gesture', '手势'),
    _HomeItem('skeletonScreen', '骨架屏'),
  ];

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  void _navToItemPage(BuildContext context, String type) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
      return GesturePage();
    }));
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
        itemCount: homeItems.length,
        itemBuilder: (BuildContext context, int index) {
          _HomeItem item = homeItems[index];
          return homeItem(context, item);
        },
      ),
    );
  }

  Widget homeItem(BuildContext context, _HomeItem item) {
    return GestureDetector(
      child: Container(
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
        child: Text(item.des),
      ),
      onTap: () {
        _navToItemPage(context, item.type);
      },
    );
  }
}

class _HomeItem {
  String type;
  String des;

  _HomeItem(
    this.type,
    this.des,
  );
}
