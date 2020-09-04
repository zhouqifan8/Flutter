import 'package:flutter/material.dart';

class AppBarDemoPage1 extends StatefulWidget {
  @override
  _AppBarDemoPage1State createState() => _AppBarDemoPage1State();
}

class _AppBarDemoPage1State extends State<AppBarDemoPage1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage1"),
          centerTitle: true,
          bottom: TabBar(tabs: <Widget>[
            Tab(text: "热门"),
            Tab(text: "推荐"),
            Tab(text: "关注"),
          ]),
        ),
        body: TabBarView(children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第一个Tab"),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第二个Tab"),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第三个Tab"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
