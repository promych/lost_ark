import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './class_tile.dart';
import './sliver_appbar_delegate.dart';
import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../models/class.dart';

class ClassList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return SafeArea(
      bottom: false,
      child: CustomScrollView(
        slivers: [
          for (var archetype in app.classArchetypes) ...[
            SliverPersistentHeader(
              delegate: SliverAppBarDelegate(
                minHeight: 50.0,
                maxHeight: 80.0,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    archetype,
                    style: const TextStyle(
                      color: Styles.defaultWhite,
                      fontSize: 40.0,
                      fontFamily: 'Alegreya',
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  for (CharacterClass item
                      in app.classesByArchetype(archetype) ?? [])
                    ClassTile(
                      name: item.name,
                      icon: item.icon,
                      onTap: () {
                        app.selectClass(item.id);
                        Navigator.of(context).pushNamed('/skills');
                      },
                    ),
                ],
              ),
            )
          ],
        ],
      ),
    );
  }
}
