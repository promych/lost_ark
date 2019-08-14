import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';

class ClassSelector extends StatefulWidget {
  @override
  _ClassSelectorState createState() => _ClassSelectorState();
}

class _ClassSelectorState extends State<ClassSelector>
    with AutomaticKeepAliveClientMixin {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(keepPage: true, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final _screenSize = MediaQuery.of(context).size;
    final app = Provider.of<AppManager>(context, listen: false);
    final classes = app.allClasses;

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: _screenSize.height * 0.65,
            child: PageView.builder(
              key: PageStorageKey('class-selector'),
              controller: _controller,
              itemCount: classes.length,
              itemBuilder: (_, int index) {
                return GestureDetector(
                  child: Card(
                    elevation: 10.0,
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
                          Image.asset(classes[index].imagePath),
                          Positioned(
                            bottom: _screenSize.height / 20,
                            child: Container(
                              width: _screenSize.width * 0.7,
                              child: Text(
                                classes[index].name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Styles.defaultWhite,
                                    fontSize: _screenSize.width / 14,
                                    fontFamily: 'Alegreya'),
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
                    app.selectClass(classes[index].id);
                    Navigator.pushNamed(context, '/skills');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
