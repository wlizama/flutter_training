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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Akronim',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Bungee_Shade',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Faster_One',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Flavors',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Frijole',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Press_Start_2P',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Raleway_Dots',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Rock_Salt',
                fontSize: 25
              ),
            ),
            Text(
              'Coronavirus time!',
              style: TextStyle(
                fontFamily: 'Tangerine',
                fontSize: 25
              ),
            )
          ]
        )
      ),
    );
  }
}