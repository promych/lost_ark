import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/class_manager.dart';
import 'package:lost_ark/ui/cupertino_navbar.dart';

import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../models/class.dart';
import '../helpers/spider_chart.dart';
// import 'skills_page.dart';

class ClassPage extends StatelessWidget {
  static const routeName = '/class';

  // final String className;

  // const ClassPage({@required this.className});

  @override
  Widget build(BuildContext context) {
    final CharacterClass classData =
        Provider.of<ClassManager>(context, listen: false).getSelectedClass;
    // .classes
    // .getClassByName(className);

    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavBar(
        backTitle: 'Classes',
        trailing: GestureDetector(
          child: Material(
            type: MaterialType.transparency,
            child: Text(
              'Skills',
              style: Theme.of(context).textTheme.subhead,
            ),
          ),
          onTap: () => Navigator.of(context).pushReplacementNamed('/skills'),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: -50.0,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height) *
                    0.4,
                child: Hero(
                  tag: 'img-${classData.name}',
                  child: Image.asset(classData.imagePath),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      classData.name,
                      style: Theme.of(context).textTheme.display3,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Weapon: ${classData.weapon}',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 20.0),
                    _StatsSpider(
                      speed: classData.stats['speed'].toDouble(),
                      defense: classData.stats['defense'].toDouble(),
                      attack: classData.stats['attack'].toDouble(),
                      range: classData.stats['range'].toDouble(),
                      support: classData.stats['support'].toDouble(),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      classData.description,
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: Container(
                        width: 400.0,
                        height: 200.0,
                        child: Placeholder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatsSpider extends StatelessWidget {
  final double speed;
  final double defense;
  final double attack;
  final double range;
  final double support;

  const _StatsSpider({
    @required this.speed,
    @required this.defense,
    @required this.attack,
    @required this.range,
    @required this.support,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      child: SpiderChart(
        maxValue: 100.0,
        data: [
          speed,
          defense,
          attack,
          range,
          support,
        ],
        colors: [
          Colors.white,
          Colors.white,
          Colors.white,
          Colors.white,
          Colors.white,
        ],
      ),
    );
  }
}
