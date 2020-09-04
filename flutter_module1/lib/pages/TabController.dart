import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  @override
  _TabControllerPageState createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabControllerPage"),
        bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: "热销"),
              Tab(text: "推荐"),
            ]),
      ),
      body: TabBarView(controller: this._tabController, children: <Widget>[
        Center(child: Text("热销")),
        Center(child: Text("推荐")),
      ]),
    );
  }
}
