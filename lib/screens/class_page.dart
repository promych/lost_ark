import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:lost_ark/ui/cupertino_navbar.dart';

import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../helpers/spider_chart.dart';

class ClassPage extends StatelessWidget {
  static const routeName = '/class';

  @override
  Widget build(BuildContext context) {
    final classData =
        Provider.of<AppManager>(context, listen: false).selectedClass;

    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavBar(
        backTitle: LocaleManager.of(context).translate('classes'),
        trailing: GestureDetector(
            child: Text(
              LocaleManager.of(context).translate('skills'),
              style: TextStyle(color: CupertinoTheme.of(context).primaryColor),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/skills');
            }),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned(
              bottom: -50.0,
              left: -50.0,
              child: Icon(
                classData.icon,
                size: 300.0,
                color: Colors.white10,
              ),
            ),
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
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      classData.name,
                      style: TextStyle(
                          fontSize: 40.0,
                          color: CupertinoTheme.of(context).primaryColor),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Weapon: ${classData.weapon}',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: CupertinoTheme.of(context).primaryColor),
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
                      style: TextStyle(
                          fontSize: 20.0,
                          color: CupertinoTheme.of(context).primaryColor),
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
