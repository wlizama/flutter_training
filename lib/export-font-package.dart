import 'package:flutter/material.dart';

void main() => runApp(ExportFontPackage());

class ExportFontPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Export Fonts Package',
      home: MyFontsPage(),
    );
  }
}

class MyFontsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Export Fonts Package'),
      ),
      body: Container(
        margin: const EdgeInsets.all(30),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              'Coronavirus buuuhuhhu!',
              style: TextStyle(
                fontFamily: 'Akronim',
                fontSize: 25
              ),
            )
          ]
        )
      ),
    );
  }
}