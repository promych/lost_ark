import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../managers/locale_manager.dart';
import '../helpers/spider_chart.dart';
import '../helpers/theme.dart';

class ClassPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final classData =
        Provider.of<AppManager>(context, listen: false).selectedClass;

    return SafeArea(
      bottom: false,
      child: classData == null
          ? const SizedBox.shrink()
          : Stack(
              children: [
                Positioned(
                  right: -50.0,
                  child: Hero(
                    tag: 'hero-${classData.name}',
                    child: Icon(
                      classData.icon,
                      size: 200.0,
                      color: Colors.white10,
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
                            fontSize: MediaQuery.of(context).size.width / 12,
                            color: Styles.defaultWhite,
                            fontFamily: 'Alegreya',
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '${LocaleManager.of(context)?.translate('weapon')}: ${classData.weapon}',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 18,
                            color: Styles.lightGrey,
                            fontFamily: 'Alegreya',
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Center(
                          child: _StatsSpider(
                            attack: classData.stats['attack']?.toDouble() ?? 0,
                            speed: classData.stats['speed']?.toDouble() ?? 0,
                            defense:
                                classData.stats['defense']?.toDouble() ?? 0,
                            support:
                                classData.stats['support']?.toDouble() ?? 0,
                            range: classData.stats['range']?.toDouble() ?? 0,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Styles.layerColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ),
                          child: Text(
                            classData.description,
                            style: Styles.defaultText20,
                          ),
                        ),
                        // SizedBox(height: 20.0),
                        // Center(
                        //   child: Container(
                        //     height: 200.0,
                        //     child: YoutubePlayer(
                        //       context: context,
                        //       videoId: classData.video,
                        //       flags: YoutubePlayerFlags(
                        //         autoPlay: false,
                        //         showVideoProgressIndicator: true,
                        //       ),
                        //     ),
                        //   ),
                        // ),
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
    required this.speed,
    required this.defense,
    required this.attack,
    required this.range,
    required this.support,
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
