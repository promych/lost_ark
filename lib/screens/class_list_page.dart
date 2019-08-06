import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../managers/locale_manager.dart';
import '../helpers/theme.dart';
import '../ui/material_appbar.dart';
import '../ui/cupertino_navbar.dart';
import '../ui/sliver_appbar_delegate.dart';
import '../ui/class_tile.dart';

class ClassListPage extends StatelessWidget {
  static const routeName = '/class-list';

  @override
  Widget build(BuildContext context) {
    final barTitle = LocaleManager.of(context).translate('classes');
    final switchToSelector =
        () => Navigator.of(context).pushReplacementNamed('/class-selector');

    return Platform.isAndroid
        ? Scaffold(
            appBar: MyMaterialAppBar(
              title: Text(barTitle, style: Styles.defaultText),
              trailing: IconButton(
                icon: Icon(Icons.view_carousel),
                onPressed: switchToSelector,
              ),
            ),
            body: _ClassListBody(),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
              middle: Text(barTitle, style: Styles.defaultText),
              trailing: GestureDetector(
                child: Icon(Icons.view_carousel),
                onTap: switchToSelector,
              ),
            ),
            child: _ClassListBody(),
          );
  }
}

class _ClassListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return SafeArea(
      bottom: false,
      child: CustomScrollView(
        slivers: [
          for (var archetype in app.classArchetypes) ...[
            SliverPersistentHeader(
              pinned: false,
              delegate: SliverAppBarDelegate(
                minHeight: 50.0,
                maxHeight: 80.0,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    archetype,
                    style: TextStyle(
                      color: Styles.defaultWhite,
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  for (var item in app.classesByArchetype(archetype))
                    ClassTile(
                      name: item.name,
                      icon: item.icon,
                      onTap: () {
                        app.selectClass(item.name);
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
