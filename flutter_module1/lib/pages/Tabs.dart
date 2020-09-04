import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Add.dart';
import 'tabs/Category1.dart';
import 'tabs/Setting.dart';
import 'drawer/Drawer.dart';

class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;

  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    CategoryPage(),
    AddPage(),
    Category1Page1(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
          centerTitle: true,
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._currentIndex,
            onTap: (int index) {
              setState(() {
                this._currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("首页")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), title: Text("分类")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), title: Text("添加")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), title: Text("分类1")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text("设置"))
            ]),
        drawer: DrawerPage());
  }
}
