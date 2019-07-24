import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/models/reddit_post.dart';
import 'package:lost_ark/screens/reddit_webview.dart';

class RedditPostTile extends StatelessWidget {
  final RedditPost post;

  const RedditPostTile({@required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 70.0,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                child: (post.thumbnail != 'self')
                    ? Image.network(
                        post.thumbnail,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        child: Center(
                          child: Icon(Icons.comment),
                        ),
                      ),
              ),
            ),
            SizedBox(width: 4.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        if (post.flair != '')
                          TextSpan(
                            text: ' ' + post.flair + ' ',
                            style: TextStyle(
                                backgroundColor: CupertinoColors.activeBlue),
                          ),
                        if (post.flair != '') TextSpan(text: ' '),
                        TextSpan(text: post.title),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Created by ${post.author} ${post.created.toString()}',
                    style: TextStyle(
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      Icon(Icons.mode_comment),
                      SizedBox(width: 4.0),
                      Text(post.numComments.toString() + ' Comments'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () => Navigator.of(context).push(
          CupertinoPageRoute(builder: (_) => RedditWebView(url: post.url))),
    );
  }
}
