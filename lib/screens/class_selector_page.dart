import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/class_manager.dart';
import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
// import '../managers/class_manager.dart';
import '../ui/cupertino_navbar.dart';

class ClassSelectorPage extends StatelessWidget {
  static const routeName = '/class-selector';

  @override
  Widget build(BuildContext context) {
    final classManager = Provider.of<ClassManager>(context, listen: false);
    final classes = classManager.getAllClasses;

    return CupertinoPageScaffold(
      navigationBar: MyCupertinoNavBar(
        backTitle: 'Home',
        title: 'Classes',
        trailing: GestureDetector(
          child: Icon(Icons.list),
          onTap: () =>
              Navigator.of(context).pushReplacementNamed('/class-list'),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // Text(
            //   'Classes',
            //   style: Theme.of(context).textTheme.display3,
            // ),
            Expanded(
              child: PageView.builder(
                itemCount: classes.length,
                itemBuilder: (_, int index) {
                  return Center(
                    child: GestureDetector(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: Hero(
                              tag: 'img-${classes[index].name}',
                              child: Image.asset(classes[index].imagePath),
                            ),
                          ),
                          Material(
                            type: MaterialType.transparency,
                            child: Text(
                              classes[index].name,
                              style: Theme.of(context).textTheme.display2,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        classManager.selectClass(classes[index].name);
                        Navigator.of(context).pushNamed('/class');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
