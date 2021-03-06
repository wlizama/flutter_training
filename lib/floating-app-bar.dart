import 'package:flutter/material.dart';

class MyFloatingAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('My floating appbar'),
            floating: true,
            flexibleSpace: Image.network(
              'https://picsum.photos/640/320'
            ),
            expandedHeight: 180,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Index #$index')),
              childCount: 100
            ),
          )
        ],
      ),
    );
  }
}