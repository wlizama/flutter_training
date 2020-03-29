import 'package:flutter/material.dart';

void main() {
	runApp(UIOrientation());
}

class UIOrientation extends StatelessWidget {
	final appTitle = 'UI Orientation demo';
	
  @override
	Widget build(BuildContext context) {

		return MaterialApp(
			title: appTitle,
			home: OrientationList(
				title: appTitle,
				leading: IconButton(
					icon: Icon(Icons.arrow_back),
					onPressed: () {
						Navigator.pop(context);
					}
				),
			),
		);
	}
}

class OrientationList extends StatelessWidget {
	final String title;
	final Widget leading;

	OrientationList({ Key key, this.title, this.leading }) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(title),
				leading: leading,
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