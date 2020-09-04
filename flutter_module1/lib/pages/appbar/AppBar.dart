import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarDemo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            RaisedButton(
                child: Text("Demo"),
                onPressed: () {
                  Navigator.pushNamed(context, '/appBarDemo');
                }),
            SizedBox(height: 20),
            RaisedButton(
                child: Text("Demo1"),
                onPressed: () {
                  Navigator.pushNamed(context, '/appBarDemo1');
                }),
            SizedBox(height: 20),
            RaisedButton(
                child: Text("Demo2"),
                onPressed: () {
                  Navigator.pushNamed(context, '/appBarDemo2');
                }),
            SizedBox(height: 20),
            RaisedButton(
                child: Text("Demo3"),
                onPressed: () {
                  Navigator.pushNamed(context, '/appBarDemo3');
                })
          ],
        ),
      ),
    );
  }
}
