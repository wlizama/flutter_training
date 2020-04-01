import 'package:flutter/material.dart';

class MostrarDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer demo'),
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