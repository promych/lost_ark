import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Classes'),
          onPressed: () => Navigator.of(context).pushNamed('/class-selector'),
        ),
      ),
    );
  }
}
