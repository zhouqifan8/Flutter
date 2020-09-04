import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            ListTile(
              title: Text("我是表单1"),
            ),
            ListTile(
              title: Text("我是表单2"),
            ),
            ListTile(
              title: Text("我是表单3"),
            ),
            ListTile(
              title: Text("我是表单4"),
            ),
            ListTile(
              title: Text("我是表单5"),
            )
          ],
        ),
        RaisedButton(
          child: Text("登录"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        RaisedButton(
          child: Text("注册"),
          onPressed: () {
            Navigator.pushNamed(context, '/registerfirst');
          },
        )
      ],
    );
  }
}
