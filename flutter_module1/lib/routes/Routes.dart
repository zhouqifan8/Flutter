import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/FormPage.dart';
import '../pages/SearchPage.dart';
import '../pages/ProductPage.dart';
import '../pages/ProductInfo.dart';

import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSec.dart';
import '../pages/appbar/AppBar.dart';
import '../pages/appbar/AppBarDemo.dart';
import '../pages/appbar/AppBarDemo1.dart';
import '../pages/TabController.dart';
import '../pages/User.dart';
import '../pages/Button.dart';

final routes = {
  '/': (context) => Tabs(),
  '/form': (context, {arguments}) => FormPage(),
  '/product': (context, {arguments}) => ProductPage(),
  '/search': (context, {arguments}) => SearchPage(),
  '/productinfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerfirst': (context) => RegisterFirstPage(),
  '/registersec': (context) => RegisterSecPage(),
  '/appBar': (context) => AppBarPage(),
  '/appBarDemo': (context) => AppBarDemoPage(),
  '/appBarDemo1': (context) => AppBarDemoPage1(),
  '/tabController': (context) => TabControllerPage(),
  '/user': (context) => UserPage(),
  '/button': (context) => ButtonPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
