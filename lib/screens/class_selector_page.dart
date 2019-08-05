import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';
import '../managers/locale_manager.dart';
import '../ui/material_appbar.dart';
import '../ui/cupertino_navbar.dart';

class ClassSelectorPage extends StatelessWidget {
  static const routeName = '/class-selector';

  @override
  Widget build(BuildContext context) {
    final barTitle = LocaleManager.of(context).translate('classes');
    final switchToList =
        () => Navigator.of(context).pushReplacementNamed('/class-list');

    return Platform.isIOS
        ? Scaffold(
            appBar: MyMaterialAppBar(
              title: Text(barTitle, style: Styles.defaultText),
              trailing: IconButton(
                icon: Icon(Icons.list),
                onPressed: switchToList,
              ),
            ),
            body: _ClassSelectorBody(),
          )
        : CupertinoPageScaffold(
            navigationBar: MyCupertinoNavBar(
              middle: Text(barTitle, style: Styles.defaultText),
              trailing: GestureDetector(
                child: Icon(Icons.list),
                onTap: switchToList,
              ),
            ),
            child: _ClassSelectorBody(),
          );
  }
}

class _ClassSelectorBody extends StatefulWidget {
  @override
  __ClassSelectorBodyState createState() => __ClassSelectorBodyState();
}

class __ClassSelectorBodyState extends State<_ClassSelectorBody> {
  PageController _controller;
  int _currentPage = 0;
  double _screenWidth;

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final classes = app.allClasses;

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView.builder(
              controller: _controller,
              itemCount: classes.length,
              itemBuilder: (_, int index) {
                return GestureDetector(
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    color: Styles.layerColor,
                    child: Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 0.0,
                            right: -50.0,
                            child: Icon(
                              classes[index].icon,
                              size: 200.0,
                              color: Colors.white10,
                            ),
                          ),
                          Hero(
                            tag: 'img-${classes[index].name}',
                            child: Image.asset(classes[index].imagePath),
                          ),
                          Positioned(
                            bottom: 50.0,
                            child: Container(
                              width: _screenWidth * 0.7,
                              child: Text(
                                classes[index].name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Styles.defaultWhite,
                                    fontSize: _screenWidth / 14),
                              ),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xCC000000),
                            const Color(0x00000000),
                            const Color(0x00000000),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    app.selectClass(classes[index].name);
                    Navigator.of(context).pushNamed('/class');
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.0),
          DotsIndicator(
            dotsCount: classes.length,
            position: _controller.hasClients ? _currentPage : 0,
            decorator: DotsDecorator(activeColor: Styles.cyanColor),
          )
        ],
      ),
    );
  }
}
