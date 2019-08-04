import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost_ark/managers/app_manager.dart';
import 'package:lost_ark/managers/build_manager.dart';
import 'package:lost_ark/managers/locale_manager.dart';
import 'package:provider/provider.dart';
import 'package:sembast/sembast.dart';

class SavedBuilds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: Provider.of<BuildManager>(context, listen: true).savedBuilds(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return Text(':(');
          } else if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.active) {
            return Center(child: CupertinoActivityIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return snapshot.data.length == 0
                ? Text(
                    ':)',
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  )
                : ListView.separated(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, int id) =>
                        _BuildTile(item: snapshot.data[id]),
                    separatorBuilder: (context, _) => Divider(),
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
      direction: DismissDirection.endToStart,
      background: Container(
        decoration: BoxDecoration(
          color: CupertinoColors.destructiveRed,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(LocaleManager.of(context).translate('delete')),
            SizedBox(width: 10.0),
            Icon(Icons.delete),
            SizedBox(width: 10.0),
          ],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: CupertinoTheme.of(context).primaryContrastingColor,
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: MediaQuery.of(context).size.width <= 360
                  ? Icon(app.classById(item['classId']).icon)
                  : Text(app.classById(item['classId']).name),
            ),
            Expanded(
              child: Wrap(
                alignment: WrapAlignment.end,
                children: List<Widget>.from(
                  item['skills'].map((item) => Image.asset(
                        app.skillById(item['id']).iconUrl,
                        height: MediaQuery.of(context).size.width <= 360
                            ? 24.0
                            : 32.0,
                      )),
                ),
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
