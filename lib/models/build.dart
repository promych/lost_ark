import 'package:flutter/foundation.dart';

class Build {
  List<BuildItem> items;

  Build() : items = [];
}

class BuildItem {
  final String skillId;
  final List<String> enchancements;

  BuildItem({@required this.skillId, @required this.enchancements});

  Map<String, dynamic> toMap() => {
        'id': skillId,
        'enchancements': enchancements,
      };

  factory BuildItem.fromMap(Map<String, dynamic> json) {
    return BuildItem(
      skillId: json['id'],
      enchancements: List.from(json['enchancements']),
    );
  }
}
