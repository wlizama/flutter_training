import 'package:flutter/material.dart';

void main() {
	runApp(MostrarDrawer());
}

class MostrarDrawer extends StatelessWidget {
  final appTitle = 'Drawer demo';
	
  @override
	Widget build(BuildContext context) {

		return MaterialApp(
			title: appTitle,
			home: MostrarDrawerHome(
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

class MostrarDrawerHome extends StatelessWidget {
	final String title;
	final Widget leading;

	MostrarDrawerHome({ Key key, this.title, this.leading }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: leading,
      ),
      body: Center(
        child: Text('Desliza de izquierda a derecha para mostrar drawer')
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('My Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
            ),
            ListTile(
              title: Text('Item 01'),
              onTap: () {
                // actualiza estado de app
                // ...
                // cerrar drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 02'),
              onTap: () {
                // actualiza estado de app
                // ...
                // cerrar drawer
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}