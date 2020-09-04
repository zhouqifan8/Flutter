import 'package:flutter/material.dart';

class AppBarDemoPage extends StatefulWidget {
  @override
  _AppBarDemoPageState createState() => _AppBarDemoPageState();
}

class _AppBarDemoPageState extends State<AppBarDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarDemoPage"),
        backgroundColor: Colors.blue,
        centerTitle: true,
//        leading: IconButton(
//            icon: Icon(Icons.menu),
//            onPressed: () {
//              print('menu');
//            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              }),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('settings');
              }),
        ],
      ),
      body: Text("1111"),
    );
  }
}
