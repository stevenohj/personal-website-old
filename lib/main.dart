import 'dart:async';

import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'work_menu.dart';
import 'music.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steven Oh',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<List> about_info = [
    [
      Expanded(
        child: Text(
          "Based in the NYC Metropolitan Area",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
      Expanded(
        child: Text(
          "* Flexible to relocating *",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    ],
    [
      Expanded(
        child: Text(
          "Motivated to develop people-centered software.\nThrives in startup environments.\nCurious about new ideas.",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 5,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    ],
    [
      Expanded(
        child: Text(
          "Interests & Hobbies",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
      Expanded(
        child: Text(
          "All things NBA, hip-hop music & culture, collecting vinyl records, improvising in the kitchen, hiking, attempting to golf",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 6,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    ],
  ];

  int current_info = 0;

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
        backgroundColor: Colors.black,
        centerTitle: true,
        title: AnimatedTextKit(
          isRepeatingAnimation: true,
          pause: const Duration(milliseconds: 10000),
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              "Hi I'm Steven!",
              speed: Duration(milliseconds: 150),
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 32.0,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                child: FloatingActionButton.extended(
                  heroTag: 'work',
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WorkHomePage(),
                      ),
                    );
                  },
                  label: const Text(
                    'WORK',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 36.0,
                    ),
                  ),
                  icon: const Icon(
                    Icons.computer_rounded,
                    size: 36.0,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                child: FloatingActionButton.extended(
                  heroTag: 'me',
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MusicPage(),
                      ),
                    );
                  },
                  label: const Text(
                    'ME',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 36.0,
                    ),
                  ),
                  icon: const Icon(
                    Icons.person_rounded,
                    size: 36.0,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.blueGrey,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                child: FloatingActionButton.extended(
                  heroTag: 'link',
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        backgroundColor: Colors.white,
                        title: const Text(
                          'Other Places to Find Me',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            fontSize: 24.0,
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6.0),
                              child: FloatingActionButton.extended(
                                heroTag: 'email',
                                onPressed: () async {
                                  if (await canLaunch(
                                      'mailto:stevenohj@gmail.com')) {
                                    await launch('mailto:stevenohj@gmail.com');
                                  }
                                },
                                label: const Text(
                                  'stevenohj@gmail.com',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.0,
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.email_rounded,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6.0),
                              child: FloatingActionButton.extended(
                                heroTag: 'github',
                                onPressed: () async {
                                  if (await canLaunch(
                                      'https://github.com/stevenohj')) {
                                    await launch(
                                        'https://github.com/stevenohj');
                                  }
                                },
                                label: const Text(
                                  'github.com/stevenohj',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.0,
                                  ),
                                ),
                                icon: Image.asset(
                                  'lib/assets/github_icon.png',
                                  width: 24.0,
                                  height: 24.0,
                                ),
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6.0),
                              child: FloatingActionButton.extended(
                                heroTag: 'linkedin',
                                onPressed: () async {
                                  if (await canLaunch(
                                      'https://www.linkedin.com/in/stevenohj')) {
                                    await launch(
                                        'https://www.linkedin.com/in/stevenohj');
                                  }
                                },
                                label: const Text(
                                  'linkedin.com/in/stevenohj/',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.0,
                                  ),
                                ),
                                icon: Image.asset(
                                  'lib/assets/linkedin_icon.png',
                                  width: 24.0,
                                  height: 24.0,
                                ),
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'BACK'),
                            child: const Text(
                              'BACK',
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  label: const Text(
                    'LINKS',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 36.0,
                    ),
                  ),
                  icon: const Icon(
                    Icons.link_rounded,
                    size: 36.0,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
