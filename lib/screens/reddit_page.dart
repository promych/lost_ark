import 'package:flutter/cupertino.dart';

import '../managers/locale_manager.dart';
import '../screens/simple_page.dart';
import '../ui/reddit_posts.dart';

class RedditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: LocaleManager.of(context).translate('latest posts'),
      child: RedditPosts(),
    );
  }
}
