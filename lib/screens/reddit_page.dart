import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/ui/reddit_tile.dart';
import 'package:provider/provider.dart';

class RedditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoTheme.of(context).primaryContrastingColor,
        middle: Text(
          'Lost Ark',
          style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: _RedditPosts(),
      ),
    );
  }
}

class _RedditPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final posts =
        Provider.of<AppManager>(context, listen: false).newRedditPosts;

    return ListView.separated(
      padding: const EdgeInsets.all(10.0),
      itemCount: posts.length,
      itemBuilder: (_, int index) => RedditPostTile(post: posts[index]),
      separatorBuilder: (_, int index) => Divider(
          // color: CupertinoTheme.of(context).primaryColor,
          ),
    );
  }
}
