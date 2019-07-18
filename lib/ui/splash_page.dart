import 'package:flutter/material.dart';

import '../helpers/lost_ark_icons.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(LostArk.logo),
      ),
    );
  }
}
