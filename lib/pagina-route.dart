import 'package:flutter/material.dart';

class PaginaRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Ruta'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Click on me ;9'),
        ),
      ),
    );
  }
}