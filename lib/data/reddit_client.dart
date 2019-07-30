import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lost_ark/models/reddit_post.dart';

class RedditClient {
  static const _baseUrl = 'https://www.reddit.com/r/lostarkgame';

  Future<List<RedditPost>> fetchNewPosts() async {
    final response = await http.get(_baseUrl + '/new.json?limit=10');
    if (response.statusCode != 200)
      return throw Exception('Posts can\'t be loaded right now. Try later.');
    try {
      final body = json.decode(response.body);
      return List.from(body['data']['children'])
          .map((json) => RedditPost.fromJson(json['data']))
          .toList();
    } catch (error) {
      return error;
    }
  }
}