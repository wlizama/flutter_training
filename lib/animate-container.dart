// animate-container
import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
	@override
	_AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
	double _width = 50;
	double _height = 50;

	Color _color = Colors.green;
	BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text('Animación demo'),
					leading: IconButton(
						icon: Icon(Icons.arrow_back),
						onPressed: () {
							Navigator.pop(context);
						}
					),
          backgroundColor: Theme.of(context).primaryColor,
				),
				body: Center(
					child: AnimatedContainer(
						width: _width,
						height: _height,
						decoration: BoxDecoration(
							color: _color,
							borderRadius: _borderRadius
						),
						duration: Duration(seconds: 1),
						curve: Curves.fastOutSlowIn,
					),
				),
				floatingActionButton: FloatingActionButton(
					child: Icon(Icons.play_arrow),
					onPressed: () {
						setState(() {
							final rand = Random();

							_width = rand.nextInt(300).toDouble();
							_height = rand.nextInt(300).toDouble();

							_color = Color.fromRGBO(
								rand.nextInt(256),
								rand.nextInt(256),
								rand.nextInt(256),
								1
							);

							_borderRadius = BorderRadius.circular(
								rand.nextInt(100).toDouble()
							);
						});
					},
          backgroundColor: Theme.of(context).accentColor,
				),
			),
		);
	}
}