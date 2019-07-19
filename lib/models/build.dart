import 'package:flutter/foundation.dart';

class Build {
  List<BuildItem> items;

  Build() : items = [];
}

@immutable
class BuildItem {
  final String skillName;
  final List<String> enchancements;

  const BuildItem({@required this.skillName, @required this.enchancements});
}
