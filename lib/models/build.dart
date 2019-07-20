import 'package:flutter/foundation.dart';

class Build {
  List<BuildItem> items;

  Build() : items = [];
}

class BuildItem {
  final String skillName;
  final List<String> enchancements;

  BuildItem({@required this.skillName, @required this.enchancements});
}
