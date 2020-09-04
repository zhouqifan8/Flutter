import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      appBar: AppBar(
        title: Text("表单"),
      ),
      body: ListView(
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
          ),
        ],
      ),
    );
  }
}
