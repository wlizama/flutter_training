import 'package:flutter/material.dart';
import 'package:flutter_training/animate-container.dart';
import 'package:flutter_training/export-font-package.dart';
import 'package:flutter_training/form-validation.dart';
import 'package:flutter_training/mostrar-drawer.dart';
import 'package:flutter_training/mostrar-snackbar.dart';
import 'package:flutter_training/pagina-route.dart';
import 'package:flutter_training/ui-orientation.dart';
import 'package:flutter_training/vista-tabs.dart';

final _widgetList = [
  { 'path': '/', 'title': 'Main Page', 'widget': Index() },
  { 'path': '/animation-container', 'title': 'Animación de container', 'widget': AnimatedContainerApp() },
  { 'path': '/ui-orientation', 'title': 'UI Orientation', 'widget': UIOrientation() },
  { 'path': '/exp-font-pkg', 'title': 'Exportar fuente de paquete', 'widget': ExportFontPackage() },
  { 'path': '/show-drawer', 'title': 'Mostrar Drawer', 'widget': MostrarDrawer() },
  { 'path': '/show-snakbar', 'title': 'Mostrar SnackBar', 'widget': MostrarSnackBar() },
  { 'path': '/view-with-tabs', 'title': 'Vista con Tabs', 'widget': VistaTabs() },
  { 'path': '/route-page', 'title': 'Pagina Route', 'widget': PaginaRoute() },
  { 'path': '/form-validation-rq', 'title': 'Form Validation', 'widget': FirstFormValidation() },
];

void main(List<String> args) {
	runApp(MaterialApp(
		title: 'Flutter Training',
		initialRoute: '/',
    routes: {
      for(var wl in _widgetList) wl['path']: (context) => wl['widget']
    },
    theme: ThemeData(
      primaryColor: Colors.indigoAccent,
      accentColor: Colors.orange
    ),
	));
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Index List con mote'),
      ),
      body: _buildListViews(context),
    );
  }

  Widget _buildListViews(context) {

		final wlist = _widgetList.map(
			(widget_item) {
				return ListTile(
					title: Text(widget_item['title']),
					onTap: () {
            Navigator.pushNamed(context, widget_item['path']);
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