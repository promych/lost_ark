import 'package:flutter/foundation.dart';

class RedditPost {
  final String id;
  final String title;
  final DateTime created;
  final String author;
  final int score;
  final int numComments;
  final String postHint;
  final String permalink;
  final String url;

  const RedditPost({
    @required this.id,
    @required this.title,
    @required this.created,
    @required this.author,
    @required this.score,
    @required this.numComments,
    @required this.postHint,
    @required this.permalink,
    @required this.url,
  });

  factory RedditPost.fromJson(Map<String, dynamic> json) {
    return RedditPost(
      id: json['id'],
      title: json['title'],
      created: DateTime.fromMillisecondsSinceEpoch(json['created'].toInt()),
      author: json['author'],
      score: json['score'],
      numComments: json['num_comments'],
      postHint: json['post_hint'],
      permalink: 'https://www.reddit.com' + json['permalink'],
      url: json['url'],
    );
  }
}
