import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/ui/reddit_tile.dart';
import 'package:provider/provider.dart';

class RedditPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final posts =
        Provider.of<AppManager>(context, listen: false).newRedditPosts;

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      itemCount: posts.length,
      itemBuilder: (_, int index) => RedditPostTile(post: posts[index]),
      separatorBuilder: (_, int index) => Divider(
        color: CupertinoTheme.of(context).primaryColor,
      ),
    );
  }
}
