import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: UserAccountsDrawerHeader(
                  accountName: Text("周起帆"),
                  accountEmail: Text("237360720@qq.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.itying.com/images/flutter/3.png"),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.itying.com/images/flutter/2.png"),
                          fit: BoxFit.cover)),
                ),
              )
            ],
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.home)),
            title: Text("我的空间"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.people)),
            title: Text("用户中心"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/user");
            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.settings)),
            title: Text("设置中心"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
