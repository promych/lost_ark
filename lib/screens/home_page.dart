import 'package:flutter/material.dart';
import 'package:lost_ark/managers/class_manager.dart';
import 'package:lost_ark/managers/skill_manager.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Provider.of<ClassManager>(context).fetchClassList();
    Provider.of<SkillManager>(context).fetchSkills();

    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('GO'),
          onPressed: () => Navigator.of(context).pushNamed('/class-selector'),
        ),
      ),
    );
  }
}
