import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../ui/class_tile.dart';
import '../ui/cupertino_navbar.dart';

class ClassListPage extends StatelessWidget {
  static const routeName = '/class-list';

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavBar(
        backTitle: 'Home',
        title: LocaleManager.of(context).translate('classes'),
        trailing: GestureDetector(
          child: Icon(Icons.view_carousel),
          onTap: () =>
              Navigator.of(context).pushReplacementNamed('/class-selector'),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            for (var archetype in app.classArchetypes) ...[
              SliverPersistentHeader(
                pinned: false,
                delegate: _SliverAppBarDelegate(
                  minHeight: 50.0,
                  maxHeight: 80.0,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      archetype,
                      style: TextStyle(
                        color: CupertinoTheme.of(context).primaryColor,
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
                      ),
                  ],
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
