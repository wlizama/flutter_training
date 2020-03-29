import 'package:flutter/material.dart';

void main() => runApp(ExportFontPackage());

class ExportFontPackage extends StatelessWidget {
  final appTitle = 'Export Fonts Package';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyFontsPage(
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

class MyFontsPage extends StatelessWidget {
  final String title;
	final Widget leading;

	MyFontsPage({ Key key, this.title, this.leading }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: leading
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