import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:provider/provider.dart';
import 'package:sembast/sembast.dart';

class SavedBuilds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: Provider.of<BuildManager>(context, listen: true).savedBuilds(),
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('No builds :(');
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(child: CupertinoActivityIndicator());
            case ConnectionState.done:
              return snapshot.hasError
                  ? Text('${snapshot.error}')
                  : ListView.separated(
                      itemCount: snapshot.data.length,
                      itemBuilder: (_, int id) =>
                          _BuildTile(item: snapshot.data[id]),
                      separatorBuilder: (_, int index) => Divider(),
                    );
          }
          return null;
        },
      ),
    );
  }
}

class _BuildTile extends StatelessWidget {
  final RecordSnapshot<int, Map<String, dynamic>> item;

  _BuildTile({@required this.item});

  @override
  Widget build(BuildContext context) {
    final app = Provider.of<AppManager>(context, listen: false);
    final build = Provider.of<BuildManager>(context, listen: false);

    return Dismissible(
      key: ValueKey(item.key),
      background: Container(color: CupertinoColors.destructiveRed),
      child: Container(
        decoration: BoxDecoration(
            color: CupertinoTheme.of(context).primaryContrastingColor,
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(app.classById(item['classId']).name),
            Row(
              children: List<Widget>.from(
                item['skills'].map((item) => Image.asset(
                      app.skillById(item['id']).iconUrl,
                      height: 32.0,
                    )),
              ),
            ),
            CupertinoButton(
              child: Icon(Icons.unarchive),
              onPressed: () => build.unpackBuild(item.key),
            ),
          ],
        ),
      ),
      onDismissed: (_) => build.deleteFromBuild(item.key),
    );
  }
}
