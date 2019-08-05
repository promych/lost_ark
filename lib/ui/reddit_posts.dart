import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../ui/reddit_tile.dart';

class RedditPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final posts =
        Provider.of<AppManager>(context, listen: false).newRedditPosts;

    return SafeArea(
      bottom: false,
      child: ListView.separated(
        padding: const EdgeInsets.all(10.0),
        itemCount: posts.length,
        itemBuilder: (_, int index) => RedditPostTile(post: posts[index]),
        separatorBuilder: (_, int index) => Divider(
          color: Styles.scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
