import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/models/reddit_post.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../managers/locale_manager.dart';
import '../screens/simple_page.dart';
import '../ui/reddit_tile.dart';

class RedditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final posts = app.newRedditPosts;

    return SimplePage(
      title: LocaleManager.of(context)?.translate('latest posts') ?? '',
      child: SafeArea(
        bottom: false,
        child: !app.isOnline
            ? Center(
                child: Text(
                  LocaleManager.of(context)?.translate('no internet') ?? '',
                  style: Styles.defaultText20,
                ),
              )
            : FutureBuilder<List<RedditPost>?>(
                future: posts,
                builder: (_, snapshot) {
                  if (snapshot.connectionState == ConnectionState.none) {
                    return Text(':(');
                  } else if (snapshot.connectionState ==
                          ConnectionState.waiting ||
                      snapshot.connectionState == ConnectionState.active) {
                    return Center(
                      child: Platform.isAndroid
                          ? CircularProgressIndicator()
                          : CupertinoActivityIndicator(),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    if (snapshot.hasError) return Text('${snapshot.error}');
                    if (snapshot.data == null) return const SizedBox.shrink();
                    return ListView.separated(
                      padding: const EdgeInsets.all(10.0),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, int index) =>
                          RedditPostTile(post: snapshot.data![index]),
                      separatorBuilder: (_, int index) => Divider(
                        color: Styles.scaffoldBackgroundColor,
                      ),
                    );
                  }
                  return Text('Oops: Future returns null');
                },
              ),
      ),
    );
  }
}
