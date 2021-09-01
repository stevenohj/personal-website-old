import 'dart:async';

import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';

class LifeHomePage extends StatefulWidget {
  LifeHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _LifeHomePageState createState() => _LifeHomePageState();
}

class _LifeHomePageState extends State<LifeHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          "Who am I?",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 48.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 12.0, 12, 6.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('What am I listening to?'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 6.0, 12, 12.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Pictures I've taken"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
