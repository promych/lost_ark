import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../helpers/theme.dart';
import '../managers/app_manager.dart';

class ClassSelector extends StatefulWidget {
  @override
  _ClassSelectorState createState() => _ClassSelectorState();
}

class _ClassSelectorState extends State<ClassSelector> {
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
    final _screenWidth = MediaQuery.of(context).size.width;
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
}
