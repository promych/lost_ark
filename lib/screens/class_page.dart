import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../managers/locale_manager.dart';
import '../helpers/spider_chart.dart';
import '../helpers/theme.dart';
import '../ui/cupertino_navbar.dart';
import '../ui/material_appbar.dart';

class ClassPage extends StatelessWidget {
  static const routeName = '/class';

  @override
  Widget build(BuildContext context) {
    final backTitle = LocaleManager.of(context).translate('classes');
    final Function openSkills =
        () => Navigator.of(context).pushReplacementNamed('/skills');

    return Platform.isIOS
        ? Scaffold(
            appBar: MyMaterialAppBar(
              backTitle: backTitle,
              trailing: FlatButton(
                child: Text(
                  LocaleManager.of(context).translate('skills'),
                  style: Styles.defaultText20,
                ),
                onPressed: openSkills,
              ),
            ),
            body: _ClassPageBody(),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
              backTitle: backTitle,
              trailing: GestureDetector(
                child: Text(
                  LocaleManager.of(context).translate('skills'),
                  style: Styles.defaultText,
                ),
                onTap: openSkills,
              ),
            ),
            child: _ClassPageBody(),
          );
  }
}

class _ClassPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final classData =
        Provider.of<AppManager>(context, listen: false).selectedClass;

    return SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Positioned(
            // bottom: -50.0,
            // left: -50.0,
            right: -50.0,
            child: Icon(
              classData.icon,
              size: 200.0,
              color: Colors.white10,
            ),
          ),
          // Positioned(
          //   right: -50.0,
          //   child: Container(
          //     constraints: BoxConstraints(
          //             maxHeight: MediaQuery.of(context).size.height) *
          //         0.4,
          //     child: Hero(
          //       tag: 'img-${classData.name}',
          //       child: Image.asset(classData.imagePath),
          //     ),
          //   ),
          // ),
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
                        fontSize: MediaQuery.of(context).size.width / 12,
                        color: Styles.defaultWhite),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '${LocaleManager.of(context).translate('weapon')}: ${classData.weapon}',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 18,
                        color: Styles.lightGrey),
                  ),
                  SizedBox(height: 40.0),
                  Center(
                    child: _StatsSpider(
                      attack: classData.stats['attack'].toDouble(),
                      speed: classData.stats['speed'].toDouble(),
                      defense: classData.stats['defense'].toDouble(),
                      support: classData.stats['support'].toDouble(),
                      range: classData.stats['range'].toDouble(),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Styles.layerColor,
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    child: Text(
                      classData.description,
                      style:
                          TextStyle(fontSize: 20.0, color: Styles.defaultWhite),
                    ),
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
    final scale = MediaQuery.of(context).size.width * 0.4;
    return Container(
      width: scale,
      height: scale,
      child: SpiderChart(
        maxValue: 100.0,
        data: [
          attack,
          speed,
          defense,
          support,
          range,
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
