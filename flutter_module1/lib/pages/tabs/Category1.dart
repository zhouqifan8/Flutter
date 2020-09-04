import 'package:flutter/material.dart';

class Category1Page1 extends StatefulWidget {
  @override
  _Category1Page1State createState() => _Category1Page1State();
}

class _Category1Page1State extends State<Category1Page1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.black,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(text: "热销1"),
                      Tab(text: "热销2"),
                      Tab(text: "热销3"),
                      Tab(text: "热销4"),
                      Tab(text: "热销5"),
                      Tab(text: "热销6"),
                      Tab(text: "热销7"),
                      Tab(text: "热销8"),
                    ]),
              )
            ],
          ),
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
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第4个Tab"),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第5个Tab"),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第6个Tab"),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第7个Tab"),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第8个Tab"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
