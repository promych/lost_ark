import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text('GO'),
          onPressed: () => Navigator.of(context).pushNamed('/class-selector'),
        ),
      ),
    );
  }
}
