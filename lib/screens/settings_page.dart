import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/helpers/theme.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);

    return CupertinoPageScaffold(
      child: DefaultTextStyle(
        style: Styles.defaultText,
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: CupertinoSegmentedControl(
                  children: {
                    0: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('EN'),
                    ),
                    1: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('RU'),
                    ),
                  },
                  groupValue: app.locale.languageCode == 'en' ? 0 : 1,
                  onValueChanged: (int index) {
                    switch (index) {
                      case 0:
                        app.changeLocale(Locale('en', 'US'));
                        break;
                      case 1:
                        app.changeLocale(Locale('ru', 'RU'));
                        break;
                    }
                  },
                ),
              ),
              // CupertinoButton(child: Text('print'), onPressed: (){

              // },)
              Expanded(
                child: FutureBuilder(
                  future: Provider.of<BuildManager>(context, listen: true)
                      .savedBuildsByClassId(app.selectedClass.id),
                  builder: (_, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return Text('No builds :(');
                      case ConnectionState.waiting:
                      case ConnectionState.active:
                        return CircularProgressIndicator();
                      case ConnectionState.done:
                        return snapshot.hasError
                            ? Text('${snapshot.error}')
                            : ListView.separated(
                                itemCount: snapshot.data.length,
                                itemBuilder: (_, int id) =>
                                    _BuildTile(snapshot: snapshot.data[id]),
                                separatorBuilder: (_, int index) => Divider(),
                              );
                    }
                    return null;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BuildTile extends StatelessWidget {
  final dynamic snapshot;

  _BuildTile({@required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(snapshot.key),
      background: Container(color: CupertinoColors.destructiveRed),
      child: Container(
        child: Row(
          children: [
            Expanded(child: Text(snapshot.toString())),
            CupertinoButton(
              child: Icon(Icons.unarchive),
              onPressed: () {},
            ),
          ],
        ),
      ),
      onDismissed: (_) => Provider.of<BuildManager>(context, listen: false)
          .deleteFromBuild(snapshot.key),
    );
  }
}
