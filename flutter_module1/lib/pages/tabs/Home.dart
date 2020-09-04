import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          RaisedButton(
            child: Text("搜索"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("商品"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("跳转AppBar"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/appBar');
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("跳转Form"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("TabController定义顶部tab切换"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/tabController');
            },
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text("Button组件"),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/button');
            },
          ),
        ],
      ),
    );
  }
}
