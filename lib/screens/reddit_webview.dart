import 'package:flutter/cupertino.dart';
import 'package:lost_ark/ui/cupertino_navbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RedditWebView extends StatelessWidget {
  final String url;

  const RedditWebView({@required this.url});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavBar(
        backTitle: 'Home',
      ),
      child: SafeArea(
        child: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
