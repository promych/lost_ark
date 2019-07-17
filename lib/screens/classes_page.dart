import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managers/class_manager.dart';
import '../models/class.dart';
import '../ui/class_list_tile.dart';

class ClassesPage extends StatelessWidget {
  static const routeName = '/';

  List<Widget> _makeSection(
      BuildContext context, List<CharacterClass> classes) {
    return [
      SliverPersistentHeader(
        pinned: false,
        delegate: _SliverAppBarDelegate(
          minHeight: 40.0,
          maxHeight: 80.0,
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              classes.first.archetype,
              style: Theme.of(context).textTheme.display2,
            ),
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          for (var item in classes)
            ClassListTile(
              name: item.name,
              icon: item.icon,
            ),
        ]),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    final classes = Provider.of<ClassManager>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                minHeight: 100.0,
                maxHeight: 200.0,
                child: Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[800],
                  child: Text(
                    'Classes',
                    style: Theme.of(context).textTheme.display3,
                  ),
                ),
              ),
            ),
            for (var archetype in classes.getArchetypes)
              ..._makeSection(
                  context, classes.getClassesByArchetype(archetype)),
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
