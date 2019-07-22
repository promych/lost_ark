import 'package:flutter/foundation.dart';

class Build {
  List<BuildItem> items;

  Build() : items = [];
}

class BuildItem {
  final String skillId;
  final List<String> enchancements;

  BuildItem({@required this.skillId, @required this.enchancements});
}
