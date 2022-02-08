import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:html_unescape/html_unescape_small.dart';
import 'package:lost_ark/helpers/lost_ark_icons.dart';

import './reddit_webview.dart';
import '../helpers/theme.dart';
import '../models/reddit_post.dart';

class RedditPostTile extends StatelessWidget {
  final RedditPost post;

  const RedditPostTile({required this.post});

  @override
  Widget build(BuildContext context) {
    final unescape = HtmlUnescape();

    void showWebView(String url) {
      Widget builder(_) => RedditWebView(url: url);
      final route = Platform.isAndroid
          ? MaterialPageRoute(builder: builder)
          : CupertinoPageRoute(builder: builder);
      Navigator.of(context).push(route);
    }

    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Styles.layerColor,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: RichText(
                    text: TextSpan(
                      style: Styles.defaultText20,
                      children: [
                        if (post.flair != null && post.flair != '') ...[
                          TextSpan(
                            text: ' ${post.flair} ',
                            style: TextStyle(
                              backgroundColor:
                                  _flairBackgroundColor(post.flair!),
                            ),
                          ),
                          const TextSpan(text: '  '),
                        ],
                        if (post.title != null)
                          TextSpan(
                            text: unescape.convert(post.title!),
                            style: const TextStyle(height: 1.2),
                          ),
                      ],
                    ),
                  ),
                  onTap: () {
                    if (post.url != null) showWebView(post.url!);
                  },
                ),
                const Divider(height: 30.0, color: Styles.layerColor),
                GestureDetector(
                  child: DefaultTextStyle(
                    style: const TextStyle(color: Styles.lightGrey),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Icon(LostArk.up),
                              const SizedBox(width: 4.0),
                              Text(post.score.toString()),
                              const SizedBox(width: 10.0),
                              const Icon(Icons.mode_comment),
                              const SizedBox(width: 4.0),
                              Text(post.numComments.toString()),
                            ],
                          ),
                        ),
                        if (post.created != null)
                          Expanded(
                            child: Text(
                              post.created!,
                              textAlign: TextAlign.end,
                            ),
                          ),
                      ],
                    ),
                  ),
                  onTap: () {
                    if (post.permalink != null) showWebView(post.permalink!);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _flairBackgroundColor(String flair) {
    switch (flair.toLowerCase()) {
      case 'video':
        return Colors.green;
      case 'question':
        return Colors.orange;
      case 'discussion':
        return Colors.blue;
      case 'community':
        return Colors.indigo[900]!;
      default:
        return CupertinoColors.inactiveGray;
    }
  }
}
