// WORK IN PROGRESS
// WORK IN PROGRESS
// WORK IN PROGRESS

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;

import '../constants.dart';

// import '../assets/data/short_term_artists.json';

// ArtistResponse readTopArtists() async {
// print(await rootBundle.loadString('data/short_term_artists.json'));
// final String response =
// await rootBundle.loadString('data/short_term_artists.json');
// return ArtistResponse.fromJson(await json.decode(short_artists.toString()));

// final auth = await http.get(
//   Uri.parse(
//       'https://api.spotify.com/authorize?client_id=${client_id}&response_type=code&scopes=${scopes}&redirect_uri=${redirect_uri}'),
// );
// print(auth.body);

// final token = await http.get(
//   Uri.parse(
//       'https://api.spotify.com/api/token?grant_type=authorization_code&code=${auth.body}&redirect_uri=${redirect_uri}'),
// );
// print(token.body);

// final response = await http.get(
//   Uri.parse(
//       'https://api.spotify.com/v1/me/top/artists?time_range=short_term&limit=2'),
//   headers: {
//     HttpHeaders.authorizationHeader:
//         'BQANE9-TAoZIeEiDXqkQQAScudEgA9tBWIf9Tma53SExdNl9g7cGjQmpjlprNMPi95nWbmsXn5bdvfgkbT6479D7_zCwV0YfQL1GQHKQovPdM3O2FWd0EwfuNjWJISiZwyphFe7_aQyX1-9kWMtc-Q',
//   },
// );

// if (response.statusCode == 200) {
//   return ArtistResponse.fromJson(jsonDecode(response.body));
// } else {
//   print(response.statusCode);
//   throw Exception('Failed to get top artists!');
// }
// return http.get(
//   Uri.parse('https://api.spotify.com/v1/me/top/artists'),
// );
// }

class ArtistResponse {
  final List<Artist> items;
  final int total;
  final int limit;
  final int offset;
  final previous;
  final String href;
  final String next;

  ArtistResponse({
    @required this.items,
    @required this.total,
    @required this.limit,
    @required this.offset,
    @required this.previous,
    @required this.href,
    @required this.next,
  });

  factory ArtistResponse.fromJson(Map<String, dynamic> json) {
    return ArtistResponse(
      items: json['items'].map((i) => Artist.fromJson(i)).toList(),
      total: json['total'],
      limit: json['limit'],
      offset: json['offset'],
      previous: json['previous'],
      href: json['href'],
      next: json['next'],
    );
  }
}

class Artist {
  final List<String> genres;
  final String id;
  final ArtistImage images;
  final String name;
  final int popularity;
  final String type;
  final String uri;

  Artist(
      {@required this.genres,
      @required this.id,
      @required this.images,
      @required this.name,
      @required this.popularity,
      @required this.type,
      @required this.uri});

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
        genres: json['genres'],
        id: json['id'],
        images: ArtistImage.fromJson(json['images'][0]),
        name: json['name'],
        popularity: json['popularity'],
        type: json['type'],
        uri: json['uri']);
  }
}

class ArtistImage {
  final int height;
  final String url;
  final int width;

  ArtistImage(
      {@required this.height, @required this.url, @required this.width});

  factory ArtistImage.fromJson(Map<String, dynamic> json) {
    return ArtistImage(
      height: json['height'],
      url: json['url'],
      width: json['width'],
    );
  }
}

// {
//   "items": [
//     {
//       "external_urls": {
//         "spotify": "https://open.spotify.com/artist/4V8LLVI7PbaPR0K2TGSxFF"
//       },
//       "followers": {
//         "href": null,
//         "total": 6880084
//       },
//       "genres": [
//         "hip hop",
//         "rap"
//       ],
//       "href": "https://api.spotify.com/v1/artists/4V8LLVI7PbaPR0K2TGSxFF",
//       "id": "4V8LLVI7PbaPR0K2TGSxFF",
//       "images": [
//         {
//           "height": 640,
//           "url": "https://i.scdn.co/image/ab6761610000e5eb8278b782cbb5a3963db88ada",
//           "width": 640
//         },
//         {
//           "height": 320,
//           "url": "https://i.scdn.co/image/ab676161000051748278b782cbb5a3963db88ada",
//           "width": 320
//         },
//         {
//           "height": 160,
//           "url": "https://i.scdn.co/image/ab6761610000f1788278b782cbb5a3963db88ada",
//           "width": 160
//         }
//       ],
//       "name": "Tyler, The Creator",
//       "popularity": 89,
//       "type": "artist",
//       "uri": "spotify:artist:4V8LLVI7PbaPR0K2TGSxFF"
//     },

//   ],
//   "total": 41,
//   "limit": 2,
//   "offset": 0,
//   "previous": null,
//   "href": "https://api.spotify.com/v1/me/top/artists?limit=2&offset=0",
//   "next": "https://api.spotify.com/v1/me/top/artists?limit=2&offset=2"
// }