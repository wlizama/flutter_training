import 'package:flutter/material.dart';
import 'Index.dart';

void main(List<String> args) {
	runApp(MaterialApp(
		title: 'Flutter Training',
		initialRoute: '/',
		routes: {
			'/': (context) => Index()
		},
	));
}