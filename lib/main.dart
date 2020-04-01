import 'package:flutter/material.dart';
import 'package:flutter_training/animate-container.dart';
import 'package:flutter_training/export-font-package.dart';
import 'package:flutter_training/mostrar-drawer.dart';
import 'package:flutter_training/mostrar-snackbar.dart';
import 'package:flutter_training/pagina-route.dart';
import 'package:flutter_training/ui-orientation.dart';
import 'package:flutter_training/vista-tabs.dart';

void main(List<String> args) {
	runApp(MaterialApp(
		title: 'Flutter Training',
		home: Index(),
	));
}


class Index extends StatelessWidget {

	final _widgetList = [
		{ 'text': 'Animación de container', 'tap_fun': (_) => AnimatedContainerApp() },
		{ 'text': 'UI Orientation', 'tap_fun': (_) => UIOrientation() },
		{ 'text': 'Exportar fuente de paquete', 'tap_fun': (_) => ExportFontPackage() },
		{ 'text': 'Mostrar Drawer', 'tap_fun': (_) => MostrarDrawer() },
		{ 'text': 'Mostrar SnackBar', 'tap_fun': (_) => MostrarSnackBar() },
		{ 'text': 'Vista con Tabs', 'tap_fun': (_) => VistaTabs() },
		{ 'text': 'Pagina Route', 'tap_fun': (_) => PaginaRoute() },
	];

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.lime
      ),
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
					onTap: () {
						Navigator.push(
							context,
							MaterialPageRoute(
								builder: widget_item['tap_fun']
							)
						);
					},
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