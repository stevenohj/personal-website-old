import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'constants.dart';

class MusicPage extends StatefulWidget {
  MusicPage({Key key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  String _dropdownValue = 'Last 4 Weeks';
  int _currentItem = 0;
  Map<String, dynamic> _currentData = short_term_artists;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              'What am I listening to?',
              speed: Duration(milliseconds: 150),
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Card(
                color: Colors.blueGrey,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Wrap(
                        spacing: 12.0,
                        runSpacing: 6.0,
                        children: <Widget>[
                          ChoiceChip(
                            label: Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.0),
                              child: Text(
                                'Artists',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            selectedColor: Colors.blue,
                            selected: _currentItem == 0,
                            onSelected: (bool selected) {
                              setState(() {
                                _currentItem = 0;
                                switch (_dropdownValue) {
                                  case "Last 4 Weeks":
                                    {
                                      _currentData = short_term_artists;
                                    }
                                    break;
                                  case "Last 6 Months":
                                    {
                                      _currentData = medium_term_artists;
                                    }
                                    break;
                                  case "All Time":
                                    {
                                      _currentData = long_term_artists;
                                    }
                                    break;
                                }
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.0),
                              child: Text(
                                'Songs',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20.0,
                                    color: Colors.black),
                              ),
                            ),
                            selectedColor: Colors.blue,
                            selected: _currentItem == 1,
                            onSelected: (bool selected) {
                              setState(() {
                                _currentItem = 1;
                                switch (_dropdownValue) {
                                  case "Last 4 Weeks":
                                    {
                                      _currentData = short_term_tracks;
                                    }
                                    break;
                                  case "Last 6 Months":
                                    {
                                      _currentData = medium_term_tracks;
                                    }
                                    break;
                                  case "All Time":
                                    {
                                      _currentData = long_term_tracks;
                                    }
                                    break;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                          child: DropdownButton<String>(
                            value: _dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 20.0,
                            elevation: 8,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0,
                              color: Colors.blueAccent,
                            ),
                            underline: Container(
                              height: 2.0,
                              color: Colors.blue,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                _dropdownValue = newValue;
                                switch (newValue) {
                                  case "Last 4 Weeks":
                                    {
                                      switch (_currentItem) {
                                        case 0:
                                          {
                                            _currentData = short_term_artists;
                                          }
                                          break;
                                        case 1:
                                          {
                                            _currentData = short_term_tracks;
                                          }
                                          break;
                                      }
                                    }
                                    break;
                                  case "Last 6 Months":
                                    {
                                      switch (_currentItem) {
                                        case 0:
                                          {
                                            _currentData = medium_term_artists;
                                          }
                                          break;
                                        case 1:
                                          {
                                            _currentData = medium_term_tracks;
                                          }
                                          break;
                                      }
                                    }
                                    break;
                                  case "All Time":
                                    {
                                      switch (_currentItem) {
                                        case 0:
                                          {
                                            _currentData = long_term_artists;
                                          }
                                          break;
                                        case 1:
                                          {
                                            _currentData = long_term_tracks;
                                          }
                                          break;
                                      }
                                    }
                                    break;
                                }
                              });
                            },
                            items: <String>[
                              'Last 4 Weeks',
                              'Last 6 Months',
                              'All Time',
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                  onTap: () {
                                    setState(() {});
                                  },
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: <Widget>[
                            ..._currentData['items'].map(
                              (item) {
                                switch (_currentItem) {
                                  case 0:
                                    {
                                      return Column(
                                        children: [
                                          Container(
                                            color: Colors.blueGrey,
                                            padding: const EdgeInsets.all(4.0),
                                            child: Image.network(
                                              item['images'][0]['url'],
                                              width: 200.0,
                                              height: 200.0,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item['name'],
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      );
                                    }
                                    break;
                                  case 1:
                                    {
                                      return Container(
                                        width: 210.0,
                                        child: Column(
                                          children: [
                                            Container(
                                              color: Colors.blueGrey,
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Image.network(
                                                item['album']['images'][0]
                                                    ['url'],
                                                width: 200.0,
                                                height: 200.0,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4.0,
                                            ),
                                            Text(
                                              item['name'],
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 5,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 16.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Text(
                                              item['artists'][0]['name'],
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 5,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.italic,
                                                fontSize: 12.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                    break;
                                }
                              },
                            ).toList(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
