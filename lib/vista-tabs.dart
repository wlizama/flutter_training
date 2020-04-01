import 'package:flutter/material.dart';

class VistaTabs extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon( Icons.directions_car)),
              Tab(icon: Icon( Icons.directions_transit)),
              Tab(icon: Icon( Icons.directions_bike))
            ],
          ),
          title: Text('Tab View demo'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike)
          ],
        ),
      ),
    );
  }
}