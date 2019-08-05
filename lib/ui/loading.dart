import 'package:flutter/cupertino.dart';

import '../helpers/lost_ark_icons.dart';
import '../screens/simple_page.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'Lost Ark',
      child: Center(
        child: Icon(LostArk.logo, size: 50.0),
      ),
    );
  }
}
