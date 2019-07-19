import 'package:flutter/cupertino.dart';
import 'package:lost_ark/helpers/theme.dart';

import '../helpers/lost_ark_icons.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: CupertinoPageScaffold(
        child: Center(
          child: Icon(
            LostArk.logo,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
