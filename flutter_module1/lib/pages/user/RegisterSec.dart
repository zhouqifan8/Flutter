import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterSecPage extends StatefulWidget {
  @override
  _RegisterSecPageState createState() => _RegisterSecPageState();
}

class _RegisterSecPageState extends State<RegisterSecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册完成"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          RaisedButton(
            child: Text("完成"),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                      builder: (context) => new Tabs(index: 2)),
                  (route) => route == null);
            },
          )
        ],
      ),
    );
  }
}
