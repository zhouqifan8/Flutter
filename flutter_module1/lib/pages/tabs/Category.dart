import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(text: "热销"),
                      Tab(text: "推荐"),
                      Tab(text: "关注"),
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
          )
        ]),
      ),
    );
  }
}
