import 'package:flutter/material.dart';

class Index extends StatelessWidget {

	final _widgetList = [
		{ 'text': 'Primer Item.', 'tap_fun': () {} },
		{ 'text': 'Segundo Item.', 'tap_fun': () {} },
	];

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Index List',
			home: Scaffold(
				appBar: AppBar(
					title: Text('My Index List'),
				),
				body: _buildListViews(),
			),
		);
	}


	Widget _buildListViews() {
		return ListView(
			padding: const EdgeInsets.all(8),
			children: <Widget>[
				for (var widget_item in _widgetList) _buildListView(widget_item)
			],
		);
	}

	Widget _buildListView(widget_item) {
		return ListTile(
			title: Text(widget_item['text']),
			onTap: widget_item['tap_fun'](),
		);
	}
}