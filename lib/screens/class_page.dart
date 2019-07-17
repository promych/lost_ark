import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../managers/class_manager.dart';
import '../models/class.dart';
import '../helpers/spider_chart.dart';
import 'skills_page.dart';

class ClassPage extends StatelessWidget {
  static const routeName = '/class';

  final String className;

  const ClassPage({@required this.className});

  @override
  Widget build(BuildContext context) {
    final CharacterClass classData =
        Provider.of<ClassManager>(context, listen: false)
            .getClassByName(className);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyMiddle: false,
        backgroundColor: Colors.transparent,
        actionsForegroundColor: Colors.white,
        previousPageTitle: 'Classes',
        trailing: GestureDetector(
          child: Text('Skills'),
          onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => SkillsPage(
                className: className,
              ),
            ),
          ),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Image.asset(
                  'assets/img/class_${className.replaceAll(' ', '').toLowerCase()}.png',
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
                      className,
                      style: Theme.of(context).textTheme.display3,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      classData.description,
                      style: Theme.of(context).textTheme.headline,
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Weapon: ${classData.weapon}',
                            style: Theme.of(context).textTheme.display1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            child: SpiderChart(
                              maxValue: 100.0,
                              data: [
                                classData.stats['speed'].toDouble(),
                                classData.stats['defense'].toDouble(),
                                classData.stats['attack'].toDouble(),
                                classData.stats['range'].toDouble(),
                                classData.stats['support'].toDouble(),
                              ],
                              colors: [
                                Colors.white,
                                Colors.white,
                                Colors.white,
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                          ),
                        )
                      ],
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
