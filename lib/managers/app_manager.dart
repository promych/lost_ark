import 'package:flutter/cupertino.dart';

import '../managers/class_manager.dart';
import '../managers/skill_manager.dart';
import '../models/class.dart';

enum Status { Uninitialized, Loading, Loaded, Error }

class AppManager extends ChangeNotifier {
  // ClassManager _classManager;
  // SkillManager _skillManager;

  Status _status = Status.Uninitialized;

  AppManager.instance();
  //     : _classManager = ClassManager.instance(),
  //       _skillManager = SkillManager.instance() {
  //   print('appload');
  //   _status = Status.Loading;
  //   notifyListeners();
  //   _classManager.fetchClassList();
  //   _skillManager.fetchSkills();
  //   _status = Status.Loaded;
  //   notifyListeners();
  // }

  Status get status => _status;
  // ClassManager get classes => _classManager;
  // SkillManager get skills => _skillManager;

}
