import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managers/app_manager.dart';
import '../ui/cupertino_navbar.dart';

class ClassSelectorPage extends StatefulWidget {
  static const routeName = '/class-selector';

  @override
  _ClassSelectorPageState createState() => _ClassSelectorPageState();
}

class _ClassSelectorPageState extends State<ClassSelectorPage> {
  PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0, viewportFraction: 0.8)
      ..addListener(() {
        setState(() {
          _currentPage = _controller.page.round();
        });
      });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final classManager = Provider.of<AppManager>(context, listen: false);
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
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: classes.length,
                itemBuilder: (_, int index) {
                  return GestureDetector(
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 100.0),
                      color: CupertinoTheme.of(context).primaryContrastingColor,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Hero(
                            tag: 'img-${classes[index].name}',
                            child: Image.asset(classes[index].imagePath),
                          ),
                          Positioned(
                            bottom: 20.0,
                            child: Text(
                              classes[index].name,
                              style: TextStyle(
                                  color:
                                      CupertinoTheme.of(context).primaryColor,
                                  fontSize: 40.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      classManager.selectClass(classes[index].name);
                      Navigator.of(context).pushNamed('/class');
                    },
                  );
                },
              ),
            ),
            DotsIndicator(
              dotsCount: 12,
              position: _controller.hasClients ? _currentPage : 0,
            )
          ],
        ),
      ),
    );
  }
}
