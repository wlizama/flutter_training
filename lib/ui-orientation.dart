import 'package:flutter/material.dart';

class UIOrientation extends StatelessWidget {

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('UI Orientation demo'),
			),
			body: OrientationBuilder(
				builder: (context, orientation) {
					return GridView.count(
						crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
						children: List.generate(100, (index) {
							return Center(
								child: Text(
									'Item $index',
								),
							);
						})
					);
				}
			),
		);
	}
}