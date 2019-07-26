import 'package:flutter/cupertino.dart';

import '../helpers/lost_ark_icons.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Icon(
          LostArk.logo,
          size: 50.0,
        ),
      ),
    );
  }
}
