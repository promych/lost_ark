import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:html_unescape/html_unescape_small.dart';
import 'package:lost_ark/helpers/lost_ark_icons.dart';

import '../helpers/theme.dart';
import '../models/reddit_post.dart';
import './reddit_webview.dart';

class RedditPostTile extends StatelessWidget {
  final RedditPost post;

  const RedditPostTile({@required this.post});

  @override
  Widget build(BuildContext context) {
    final unescape = HtmlUnescape();

    Function showWebView = (String url) {
      final builder = (_) => RedditWebView(url: url);
      final route = Platform.isAndroid
          ? MaterialPageRoute(builder: builder)
          : CupertinoPageRoute(builder: builder);
      Navigator.of(context).push(route);
    };

    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Styles.layerColor,
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Container(
                    child: RichText(
                      text: TextSpan(
                        style: Styles.defaultText20,
                        children: [
                          if (post.flair != '')
                            TextSpan(
                              text: ' ' + post.flair + ' ',
                              style: TextStyle(
                                backgroundColor:
                                    _flairBackgroundColor(post.flair),
                              ),
                            ),
                          if (post.flair != '') TextSpan(text: '  '),
                          TextSpan(
                              text: unescape.convert(post.title),
                              style: TextStyle(
                                height: 1.2,
                              )),
                        ],
                      ),
                    ),
                  ),
                  onTap: () => showWebView(post.url),
                ),
                Divider(height: 30.0, color: Styles.layerColor),
                GestureDetector(
                  child: DefaultTextStyle(
                    style: TextStyle(color: Styles.lightGrey),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(LostArk.up),
                              SizedBox(width: 4.0),
                              Text(post.score.toString()),
                              SizedBox(width: 10.0),
                              Icon(Icons.mode_comment),
                              SizedBox(width: 4.0),
                              Text(post.numComments.toString()),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            post.created.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => showWebView(post.permalink),
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
        return CupertinoColors.activeGreen;
      case 'question':
        return CupertinoColors.activeOrange;
      case 'discussion':
        return CupertinoColors.activeBlue;
      default:
        return CupertinoColors.inactiveGray;
    }
  }
}
