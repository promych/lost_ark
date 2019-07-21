import 'package:flutter/cupertino.dart';
import 'package:lost_ark/helpers/theme.dart';

class ErrorView extends StatelessWidget {
  final String message;

  const ErrorView({@required this.message});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: CupertinoPageScaffold(
        child: Center(
          child: Text(
            message,
            style: TextStyle(color: CupertinoColors.destructiveRed),
          ),
        ),
      ),
    );
  }
}
