import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

import '../ui/material_appbar.dart';
import '../ui/cupertino_navbar.dart';

class RedditWebView extends StatelessWidget {
  final String url;

  const RedditWebView({@required this.url});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Scaffold(
            appBar: MyMaterialAppBar(),
            body: _RedditWebViewBody(url: url),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(backTitle: 'Home'),
            child: _RedditWebViewBody(url: url),
          );
  }
}

class _RedditWebViewBody extends StatelessWidget {
  final String url;

  _RedditWebViewBody({@required this.url});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
