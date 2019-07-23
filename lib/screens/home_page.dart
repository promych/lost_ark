import 'package:flutter/cupertino.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final posts =
        Provider.of<AppManager>(context, listen: false).newRedditPosts;

    return CupertinoPageScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CupertinoButton(
              child: Text('GO'),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/class-selector'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (_, int index) {
                return Text(posts[index].title);
              },
            ),
          )
        ],
      ),
    );
  }
}
