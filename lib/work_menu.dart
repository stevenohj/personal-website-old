import 'dart:async';

import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WorkHomePage extends StatefulWidget {
  WorkHomePage({Key key}) : super(key: key);

  List<bool> isExpanded = [false, false, false, false];

  @override
  _WorkHomePageState createState() => _WorkHomePageState();
}

class _WorkHomePageState extends State<WorkHomePage> {
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
              'Check out my work!',
              speed: Duration(milliseconds: 150),
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 28.0,
              ),
            ),
          ],
        ),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 4.0),
                child: ExpansionPanelList(
                  expansionCallback: (int, bool) {
                    setState(
                      () {
                        widget.isExpanded[0] = !widget.isExpanded[0];
                      },
                    );
                  },
                  dividerColor: Colors.black,
                  children: [
                    ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(18.0, 12.0, 12.0, 0.0),
                          child: const Text(
                            'Experience',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.0,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    color: Colors.blueGrey,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'TADA',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'Application Developer',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'September 2020 - June 2021',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 5,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          const Text(
                                            'TADA makes artistic experiences universally accessible and inclusive using audio descriptions and curatorial information readily available in a cross-platform mobile app (iOS/Android), regardless of your visual ability. Additionally, I led the development of a separate web app allowing arts administrators to manage the mobile app’s database of artworks, building the frontend and most of the backend.',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 50,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    color: Colors.blueGrey,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Segmed, Inc.',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'Software Engineering Intern',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'June 2020 - August 2020',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 5,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          const Text(
                                            'I built a feature that efficiently queries Segmed’s database containing 50+ million medical imaging files, returning a database snapshot to display to Segmed’s clients. In addition, I built a web caching feature that recalculates and caches these statistics periodically, which can also be built upon for other endpoints and data. Other smaller features I contributed include a DICOM file generator and DevOps testing tools.',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 50,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    color: Colors.blueGrey,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Kite',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'Python Code Curator & Reviewer',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 5,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'July 2019 - November 2019',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 5,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          const Text(
                                            'I contributed 200+ documentated code solutions to Kite Answers – curated answers to the top several thousand Python how-to questions, freely available to all developers. I was promoted to additionally review other code curators’ work for QA.',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 50,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isExpanded: widget.isExpanded[0],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0),
                child: ExpansionPanelList(
                  expansionCallback: (int, bool) {
                    setState(
                      () {
                        widget.isExpanded[1] = !widget.isExpanded[1];
                      },
                    );
                  },
                  children: [
                    ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(18.0, 12.0, 12.0, 0.0),
                          child: const Text(
                            'Projects',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.0,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    color: Colors.blueGrey,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Spotify Listener Toolbox',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'Python, Data Analysis & Visualization, Path Optimization, Web Scraping, GUI',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 10,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          const Text(
                                            'I leveraged Spotify’s API to analyze audio data for songs in a user’s playlist to reorder it for smoother transitions, using an optimal path graph algorithm. I built a web scraper to get Spotify’s top 200 songs for a given date to generate a data visualization for that day’s music trends, representing each musical artist as a bubble sized according to their streaming popularity.',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 50,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    color: Colors.blueGrey,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Web of Bars',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Text(
                                            'Full Stack Web App Development, Data Analysis & Visualization, Flutter (Dart)',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 11,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          const Text(
                                            'Currently, Web of Bars analyzes data within hip-hop, such as audio data, lyrics, streaming data, album sales, reviews, and more. This produces a data visualization presented as visually digestible content for social media. I am building a web app to provide an online platform to include these visualizations from social media, and also to allow content creators to publish their own graphics and thoughts as visual essays centered around hip-hop data. The web app will also include a forum for hip-hop fans to discuss songs, albums, and artists.',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 50,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isExpanded: widget.isExpanded[1],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 4.0),
                child: ExpansionPanelList(
                  expansionCallback: (int, bool) {
                    setState(
                      () {
                        widget.isExpanded[2] = !widget.isExpanded[2];
                      },
                    );
                  },
                  children: [
                    ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(18.0, 12.0, 12.0, 0.0),
                          child: const Text(
                            'Skillset',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.0,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Wrap(
                                spacing: 6.0,
                                runSpacing: 6.0,
                                children: <Widget>[
                                  Chip(
                                    backgroundColor: Colors.lightBlue,
                                    label: const Text(
                                      'Python',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightBlue,
                                    label: const Text(
                                      'Dart',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightBlue,
                                    label: const Text(
                                      'Go',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightBlue,
                                    label: const Text(
                                      'JavaScript',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightBlue,
                                    label: const Text(
                                      'Java',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightBlue,
                                    label: const Text(
                                      'Swift',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightBlue,
                                    label: const Text(
                                      'PostgreSQL',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightGreen,
                                    label: const Text(
                                      'Git (GitHub, GitLab)',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightGreen,
                                    label: const Text(
                                      'Docker',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightGreen,
                                    label: const Text(
                                      'Firebase',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightGreen,
                                    label: const Text(
                                      'Agile Development (Scrum)',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightGreen,
                                    label: const Text(
                                      'Testing',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightGreen,
                                    label: const Text(
                                      'CI/CD',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.lightGreen,
                                    label: const Text(
                                      'Accessibility',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.yellow,
                                    label: const Text(
                                      'Adobe - Illustrator, XD, Photoshop',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.yellow,
                                    label: const Text(
                                      'Canva',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.yellow,
                                    label: const Text(
                                      'Microsoft Office',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.yellow,
                                    label: const Text(
                                      'Google Suite',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: Colors.yellow,
                                    label: const Text(
                                      'Social Media',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      isExpanded: widget.isExpanded[2],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 4.0, 12.0, 12.0),
                child: ExpansionPanelList(
                  expansionCallback: (int, bool) {
                    setState(
                      () {
                        widget.isExpanded[3] = !widget.isExpanded[3];
                      },
                    );
                  },
                  children: [
                    ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(18.0, 12.0, 12.0, 0.0),
                          child: const Text(
                            'Education',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.0,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                      body: Padding(
                        padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'lib/assets/Duke_University_Crest.png',
                                  width: 100.0,
                                  height: 123.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        'Duke University',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 24.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const Text(
                                        'Durham, NC',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 18.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      const Text(
                                        'Graduated September 2021',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const Text(
                                        'B.S. - Computer Science & Music',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const Text(
                                        'Minor - Visual & Media Studies',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(12.0, 12.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 12.0),
                                    child: const Text(
                                      'Relevant Coursework',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Wrap(
                                          spacing: 6.0,
                                          runSpacing: 6.0,
                                          children: <Widget>[
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Data Structures & Algorithms',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Computer Architecture',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Artificial Intelligence',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Delivering Software',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'iOS Mobile App Programming',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Interactive Graphics',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Ethereum & Smart Contracts',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Discrete Math for Computer Science',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 5,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Matrices & Vector Spaces',
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Chip(
                                              backgroundColor: Colors.indigo,
                                              label: const Text(
                                                'Probability',
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(12.0, 12.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 12.0),
                                    child: const Text(
                                      'Certifications',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 24.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Wrap(
                                          spacing: 6.0,
                                          runSpacing: 6.0,
                                          children: <Widget>[
                                            Chip(
                                              backgroundColor: Colors.cyan,
                                              label: const Text(
                                                'Software Processes and Agile Practices (Coursera: University of Alberta)',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 10,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      isExpanded: widget.isExpanded[3],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
