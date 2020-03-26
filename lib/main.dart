import 'package:flutter/material.dart';

void main(List<String> args) {
	runApp(MaterialApp(
		title: 'Flutter Training',
		home: Index(),
	));
}


class Index extends StatelessWidget {

	final _widgetList = [
		{ 'text': 'Primer Item', 'tap_fun': () {} },
		{ 'text': 'Segundo Item', 'tap_fun': () {} },
		{ 'text': '3er Item', 'tap_fun': () {} },
		{ 'text': '4to Item', 'tap_fun': () {} },
	];

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Index List',
			home: Scaffold(
				appBar: AppBar(
					title: Text('My Index List'),
				),
				body: _buildListViews(context),
			),
		);
	}


	Widget _buildListViews(context) {

		final wlist = _widgetList.map(
			(widget_item) {
				return ListTile(
					title: Text(widget_item['text']),
					onTap: widget_item['tap_fun'],
				);
			}
		);

		final wlist_divided = ListTile.divideTiles(
			context: context,
			tiles: wlist
		).toList();


		return ListView(
			padding: const EdgeInsets.all(8),
			children: wlist_divided,
		);
	}
}