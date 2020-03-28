import 'package:flutter/material.dart';

void main() {
	runApp(UIOrientation());
}

class UIOrientation extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final appTitle = 'UI Orientation demo';

		return MaterialApp(
			title: appTitle,
			home: OrientationList(
				title: appTitle
			),
		);
	}
}

class OrientationList extends StatelessWidget {
	final String title;

	OrientationList({ Key key, this.title }) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(title),
			),
			body: OrientationBuilder(
				builder: (context, orientation) {
					return GridView.count(
						crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
						children: List.generate(100, (index) {
							return Center(
								child: Text(
									'Item $index',
									style: Theme.of(context).textTheme.headline,
								),
							);
						})
					);
				}
			),
		);
	}
}