import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

@immutable
class RedditPost {
  final String? id;
  final String? title;
  final String? created;
  final String? author;
  final int? score;
  final int? numComments;
  final String? flair;
  final String? permalink;
  final String? url;
  final String? thumbnail;

  const RedditPost({
    required this.id,
    required this.title,
    required this.created,
    required this.author,
    required this.score,
    required this.numComments,
    required this.flair,
    required this.permalink,
    required this.url,
    required this.thumbnail,
  });

  factory RedditPost.fromJson(Map<String, dynamic> json, String appLang) {
    String _toHours(int howMany) {
      switch (appLang) {
        case 'ru':
          return Intl.plural(
            howMany,
            one: '$howMany час назад',
            other: '$howMany часов назад',
          );
        default:
          return Intl.plural(
            howMany,
            one: '$howMany hour ago',
            other: '$howMany hours ago',
          );
      }
    }

    String _toDays(int howMany) {
      switch (appLang) {
        case 'ru':
          return Intl.plural(
            howMany,
            one: '$howMany день назад',
            other: '$howMany дней назад',
          );
        default:
          return Intl.plural(
            howMany,
            one: '$howMany day ago',
            other: '$howMany days ago',
          );
      }
    }

    String? _createdAgo(double? timestamp) {
      if (timestamp == null) return null;
      final dateCreated =
          DateTime.fromMillisecondsSinceEpoch(timestamp.toInt() * 1000);
      final diff = DateTime.now().difference(dateCreated);

      if (diff.inMinutes < 60) {
        return appLang == 'ru'
            ? '${diff.inMinutes} минут назад'
            : '${diff.inMinutes} minutes ago';
      } else if (diff.inHours < 24) {
        return _toHours(diff.inHours);
      } else {
        return _toDays(diff.inDays);
      }
    }

    return RedditPost(
      id: json['id'] as String?,
      title: json['title'] as String?,
      created: _createdAgo(json['created_utc'] as double?),
      author: json['author'] as String?,
      score: json['score'] as int?,
      numComments: json['num_comments'] as int?,
      flair: (json['link_flair_text'] ?? '') as String?,
      permalink: 'https://www.reddit.com${json['permalink']}',
      url: json['url'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );
  }
}
