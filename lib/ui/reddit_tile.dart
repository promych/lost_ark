import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/models/reddit_post.dart';
import 'reddit_webview.dart';

class RedditPostTile extends StatelessWidget {
  final RedditPost post;

  const RedditPostTile({@required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: CupertinoTheme.of(context).primaryContrastingColor,
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //   Container(
            //     constraints: BoxConstraints(
            //       maxHeight: 70.0,
            //     ),
            //     width: MediaQuery.of(context).size.width / 5,
            //     child: (post.thumbnail != 'self')
            //         ? Image.network(post.thumbnail, fit: BoxFit.cover)
            //         : Container(
            //             child: Center(
            //               child: Icon(Icons.comment),
            //             ),
            //           ),
            //   ),
            // SizedBox(width: 4.0),
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
                        if (post.flair != '') TextSpan(text: '  '),
                        TextSpan(
                            text: post.title,
                            style: TextStyle(
                              height: 1.2,
                            )),
                      ],
                    ),
                  ),
                  // SizedBox(height: 4.0),
                  // Text(
                  //   'Created by ${post.author} ${post.created.toString()}',
                  //   style: TextStyle(
                  //     color: CupertinoColors.inactiveGray,
                  //   ),
                  // ),
                  SizedBox(height: 20.0),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.mode_comment),
                            SizedBox(width: 4.0),
                            Text(post.numComments.toString()),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_upward),
                            SizedBox(width: 4.0),
                            Text(post.score.toString()),
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
