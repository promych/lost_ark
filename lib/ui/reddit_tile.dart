import 'package:flutter/cupertino.dart';
import 'package:lost_ark/models/reddit_post.dart';

class RedditPostTile extends StatelessWidget {
  final RedditPost post;

  const RedditPostTile({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text(post.score.toString()),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(post.hint),
                  Expanded(child: Text(post.title)),
                ],
              ),
              Text('Created by ${post.author} ${post.created.toString()}'),
            ],
          ),
        ),
        Text(post.numComments.toString()),
      ],
    );
  }
}
