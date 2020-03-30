import 'package:flutter/material.dart';

void main() {
	runApp(MostrarSnackBar());
}

class MostrarSnackBar extends StatelessWidget {
  final appTitle = 'SnackBar demo';
	
  @override
	Widget build(BuildContext context) {

		return MaterialApp(
			title: appTitle,
			home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
          ),
        ),
        body: MostrarSnackBarHome(),
			),
		);
	}
}

class MostrarSnackBarHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackbar = SnackBar(
            content: Text('Hola soy un SnackBar ;)'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // deshacer cambio
              },
            ),
          );

          // Encuentra el Scaffold en el árbol de widgets y ¡úsalo para mostrar un SnackBar!
          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Text('Mostear SnackBar!!!'),
      )
    );
  }
}