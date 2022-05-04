import 'package:flutter/material.dart';

import 'drawer_header.dart';
import 'drawer_items.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to DR System'),
      ),
      body: Container(
        child: Center(
          child: Text('HomePage'),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
