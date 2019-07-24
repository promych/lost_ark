import 'package:flutter/cupertino.dart';
import 'package:lost_ark/helpers/theme.dart';

import 'package:lost_ark/ui/reddit_posts.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: DefaultTextStyle(
        style: Styles.defaultText,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: CupertinoButton(
                  child: Text('GO'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/class-selector'),
                ),
              ),
              Expanded(
                flex: 3,
                child: RedditPosts(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
