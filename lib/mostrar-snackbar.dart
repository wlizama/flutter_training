import 'package:flutter/material.dart';


/* POR CORREGIR */
class MostrarSnackBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar demo'),
      ),
      body: Center(
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
      )
    );
  }
}