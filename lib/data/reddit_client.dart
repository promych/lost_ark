import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/reddit_post.dart';

class RedditClient {
  static const _baseUrl = 'https://www.reddit.com/r/lostarkgame';

  Future<List<RedditPost>> fetchNewPosts({
    int howMany = 10,
    String appLang = 'en',
  }) async {
    final response =
        await http.get(Uri.parse('$_baseUrl/new.json?limit=$howMany'));
    if (response.statusCode != 200)
      throw Exception('Posts can\'t be loaded right now. Try later.');
    try {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final data = body['data'] as Map<String, dynamic>;
      return List.from(data['children'] as Iterable)
          .map(
            (json) => RedditPost.fromJson(
              json['data'] as Map<String, dynamic>,
              appLang,
            ),
          )
          .toList();
    } catch (error) {
      throw Exception(error);
    }
  }
}
