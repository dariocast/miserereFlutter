import 'package:flutter/material.dart';
import 'package:miserere/views/confraternitaDettaglio.dart';
import 'package:miserere/views/confraternite.dart';
import 'package:miserere/views/salmo50.dart';

void main() => runApp(Miserere());

class Miserere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routing info
      initialRoute: '/',
      routes: {
        ConfraterniteView.routeName: (context) => ConfraterniteView(),
        ConfraternitaDettaglio.routeName: (context) => ConfraternitaDettaglio(),
        Salmo50.routeName: (context) => Salmo50(),
      },
      title: 'Miserere',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        fontFamily: "Roboto",
      ),
      home: AppHomePage(title: 'Miserere'),
    );
  }
}

class AppHomePage extends StatelessWidget {
  AppHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Center(child: Text('Miserere'),),
            subtitle: Center(child: Text('Il salmo 50'),),
            onTap: () {
              Navigator.pushNamed(context, '/salmo');
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Programma'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Confraternite'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/confraternite');
            },
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Cosa vedere'),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

