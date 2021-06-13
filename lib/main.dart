import 'dart:async';

import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';

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
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> job_positions = [
    'Software Engineering Intern',
    'App Developer',
    'Python Code Curator and Reviewer'
  ];

  final List<String> job_companies = ['Segmed, Inc.', 'TADA', 'Kite'];

  final List<String> job_dates = [
    'June 2020 - August 2020',
    'September 20202 - Present',
    'July 2019 - November 2019'
  ];

  final List<String> job_details = [
    '\nI built a feature that efficiently queries Segmed’s database containing 50+ million medical imaging files, returning a database snapshot to display to Segmed’s clients. In addition, I built a web caching feature that recalculates and caches these statistics periodically, which can also be built upon for other endpoints and data. Other smaller features I contributed include a DICOM file generator and DevOps testing tools.',
    '\nTADA makes artistic experiences universally accessible and inclusive using audio descriptions and curatorial information readily available in a cross-platform mobile app (iOS/Android), regardless of your visual ability. Additionally, I led the development of a separate web app allowing arts administrators to manage the mobile app’s database of artworks, building the frontend and most of the backend.',
    "\nI contributed 200+ documentated code solutions to Kite Answers – curated answers to the top several thousand Python how-to questions, freely available to all developers. I was promoted to additionally review other code curators’ work for QA."
  ];

  int current_job = 0;

  final List<String> project_names = [
    'Spotify Listener Toolbox',
    'Web of Bars'
  ];

  final List<String> project_tools = [
    'Python, Data Analysis & Visualization, Path Optimization, Web Scraping, GUI',
    'Full Stack Web App Development, Data Analysis & Visualization, Flutter (Dart)'
  ];

  final List<String> project_details = [
    '\nI leveraged Spotify’s API to analyze audio data for songs in a user’s playlist to reorder it for smoother transitions, using an optimal path graph algorithm. I built a web scraper to get Spotify’s top 200 songs for a given date to generate a data visualization for that day’s music trends, representing each musical artist as a bubble sized according to their streaming popularity.',
    '\nCurrently, Web of Bars analyzes data within hip-hop, such as audio data, lyrics, streaming data, album sales, reviews, and more. This produces a data visualization presented as visually digestible content for social media. I am building a web app to provide an online platform to include these visualizations from social media, and also to allow content creators to publish their own graphics and thoughts as visual essays centered around hip-hop data. The web app will also include a forum for hip-hop fans to discuss songs, albums, and artists.'
  ];

  int current_project = 0;

  final List<String> skills = [
    'Python, Dart (Flutter), Java, JavaScript, Go, C, Swift, PostgreSQL, Git',
    'GitHub/GitLab, Docker, Firebase, Agile Development (Scrum), Testing, CI/CD, Wireframing, Accessibility',
    'Adobe (Illustrator, XD, Photoshop), Canva, Social Media Management, Microsoft Office, Google (Docs, Slides, Sheets, etc.)'
  ];

  final List<String> skill_types = [
    'Technical',
    'Development',
    'Non-Technical'
  ];

  int current_skill = 0;

  final List<String> courses = [
    '- Data Structures & Algorithms\n\n- Computer Architecture\n\n- Artificial Intelligence',
    '- Delivering Software\n\n- iOS Mobile App Programming\n\n- Software Processes & Agile Practices',
    '- Discrete Math for Computer Science\n\n- Matrices & Vector Spaces\n\n- Probability',
    '- Interactive Graphics\n\n- Ethereum & Smart Contracts',
  ];

  int current_course = 0;

  final List<List> about_info = [
    [
      Expanded(
        child: Text(
          "Duke University, 2021",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
      Expanded(
        child: Text(
          "B.S. in Computer Science & Music\nMinor in Visual & Media Studies",
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
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Text(
                    'Software Engineer',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 0.0, right: 0.0),
                  child: Text(
                    'Steven Oh',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 48.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: Text(
                    'Music Enthusiast',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 4.0),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_before_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_job == 0) {
                                              current_job =
                                                  job_positions.length - 1;
                                            } else {
                                              current_job--;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 4.0, 8.0, 8.0),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 8.0, 8.0, 4.0),
                                              child: Text(
                                                'Work Experience',
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 28.0,
                                                  color: Colors.indigo,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 4.0, 8.0, 8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '${job_companies[current_job]}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      '${job_positions[current_job]}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                        fontSize: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 4.0, 8.0, 8.0),
                                              child: ElevatedButton(
                                                onPressed: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return SimpleDialog(
                                                        title: Text(
                                                          '${project_names[current_project]}',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 24.0,
                                                          ),
                                                        ),
                                                        insetPadding:
                                                            EdgeInsets.only(
                                                                left: 250.0,
                                                                right: 250.0),
                                                        titlePadding:
                                                            EdgeInsets.fromLTRB(
                                                                24.0,
                                                                24.0,
                                                                24.0,
                                                                8.0),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                24.0,
                                                                8.0,
                                                                24.0,
                                                                24.0),
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                '${job_positions[current_job]}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black87,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                '${job_dates[current_job]}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black87,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                '${job_details[current_job]}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                softWrap: true,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 10,
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black87,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 16.0,
                                                            ),
                                                            child:
                                                                ElevatedButton(
                                                              onPressed:
                                                                  () async {
                                                                await Navigator
                                                                    .pop(
                                                                        context);
                                                              },
                                                              style: ButtonStyle(
                                                                  backgroundColor:
                                                                      MaterialStateProperty.all<
                                                                              Color>(
                                                                          Colors
                                                                              .blueGrey),
                                                                  foregroundColor:
                                                                      MaterialStateProperty.all<
                                                                              Color>(
                                                                          Colors
                                                                              .white)),
                                                              child: Text(
                                                                'Go Back',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Colors
                                                                .blueGrey),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Colors.white)),
                                                child: Text(
                                                  'See More',
                                                  textAlign: TextAlign.left,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_next_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_job ==
                                                job_positions.length - 1) {
                                              current_job = 0;
                                            } else {
                                              current_job++;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_before_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_project == 0) {
                                              current_project =
                                                  project_names.length - 1;
                                            } else {
                                              current_project--;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 4.0, 8.0, 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 8.0, 8.0, 4.0),
                                              child: Text(
                                                'Projects',
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 28.0,
                                                  color: Colors.indigo,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 4.0, 8.0, 4.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '${project_names[current_project]}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 4.0, 8.0, 8.0),
                                              child: ElevatedButton(
                                                onPressed: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return SimpleDialog(
                                                        title: Text(
                                                          '${project_names[current_project]}',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 24.0,
                                                          ),
                                                        ),
                                                        insetPadding:
                                                            EdgeInsets.only(
                                                                left: 250.0,
                                                                right: 250.0),
                                                        titlePadding:
                                                            EdgeInsets.fromLTRB(
                                                                24.0,
                                                                24.0,
                                                                24.0,
                                                                8.0),
                                                        contentPadding:
                                                            EdgeInsets.fromLTRB(
                                                                24.0,
                                                                8.0,
                                                                24.0,
                                                                24.0),
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                '${project_tools[current_project]}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black87,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                '${project_details[current_project]}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                softWrap: true,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                maxLines: 10,
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black87,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 16.0,
                                                            ),
                                                            child:
                                                                ElevatedButton(
                                                              onPressed:
                                                                  () async {
                                                                await Navigator
                                                                    .pop(
                                                                        context);
                                                              },
                                                              style: ButtonStyle(
                                                                  backgroundColor:
                                                                      MaterialStateProperty.all<
                                                                              Color>(
                                                                          Colors
                                                                              .blueGrey),
                                                                  foregroundColor:
                                                                      MaterialStateProperty.all<
                                                                              Color>(
                                                                          Colors
                                                                              .white)),
                                                              child: Text(
                                                                'Go Back',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Colors
                                                                .blueGrey),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Colors.white)),
                                                child: Text(
                                                  'See More',
                                                  textAlign: TextAlign.left,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_next_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_project ==
                                                project_names.length - 1) {
                                              current_project = 0;
                                            } else {
                                              current_project++;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 4.0),
                            child: Image.asset('lib/assets/portrait.jpg',
                                fit: BoxFit.contain),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 4.0),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_before_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_skill == 0) {
                                              current_skill =
                                                  skill_types.length - 1;
                                            } else {
                                              current_skill--;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 8.0, 8.0, 8.0),
                                            child: Text(
                                              'Skillset',
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 28.0,
                                                color: Colors.indigo,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 8.0, 8.0, 4.0),
                                            child: Text(
                                              '${skill_types[current_skill]}',
                                              textAlign: TextAlign.left,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 8,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 24.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 4.0, 8.0, 8.0),
                                            child: Text(
                                              '${skills[current_skill]}',
                                              textAlign: TextAlign.left,
                                              maxLines: 8,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              style: const TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_next_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_skill ==
                                                skills.length - 1) {
                                              current_skill = 0;
                                            } else {
                                              current_skill++;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_before_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_course == 0) {
                                              current_course =
                                                  courses.length - 1;
                                            } else {
                                              current_course--;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 8.0, 8.0, 8.0),
                                            child: Text(
                                              'Coursework & Certificates',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 28.0,
                                                color: Colors.indigo,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 8.0, 8.0, 8.0),
                                            child: Text(
                                              '${courses[current_course]}',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              maxLines: 10,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                                fontSize: 20.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: IconButton(
                                      iconSize: 36.0,
                                      padding: const EdgeInsets.all(0.0),
                                      splashRadius: 16.0,
                                      icon: Icon(
                                        Icons.navigate_next_rounded,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () {
                                        setState(
                                          () {
                                            if (current_course ==
                                                courses.length - 1) {
                                              current_course = 0;
                                            } else {
                                              current_course++;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: IconButton(
                                iconSize: 48.0,
                                padding: const EdgeInsets.all(24.0),
                                splashRadius: 24.0,
                                icon: Image.asset('lib/assets/github_icon.png'),
                                onPressed: () async {
                                  if (await canLaunch(
                                      'https://github.com/stevenohj')) {
                                    await launch(
                                        'https://github.com/stevenohj');
                                  }
                                },
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                iconSize: 48.0,
                                padding: const EdgeInsets.all(24.0),
                                splashRadius: 24.0,
                                icon:
                                    Image.asset('lib/assets/linkedin_icon.png'),
                                onPressed: () async {
                                  if (await canLaunch(
                                      'https://www.linkedin.com/in/stevenohj/')) {
                                    await launch(
                                        'https://www.linkedin.com/in/stevenohj/');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                iconSize: 36.0,
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.all(0.0),
                                splashRadius: 16.0,
                                icon: Icon(
                                  Icons.navigate_before_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (current_info == 0) {
                                        current_info = about_info.length - 1;
                                      } else {
                                        current_info--;
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'About Me',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 28.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: about_info[current_info]
                                            .cast<Widget>(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                iconSize: 36.0,
                                padding: const EdgeInsets.all(0.0),
                                splashRadius: 16.0,
                                icon: Icon(
                                  Icons.navigate_next_rounded,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      if (current_info ==
                                          about_info.length - 1) {
                                        current_info = 0;
                                      } else {
                                        current_info++;
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, top: 2.0, bottom: 2.0),
                                child: Text(
                                  'Contact Me!',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 28.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Phone",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "(845) 464-7680",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 2.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Email",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "stevenohj@gmail.com",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
