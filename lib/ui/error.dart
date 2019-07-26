import 'package:flutter/cupertino.dart';

class ErrorView extends StatelessWidget {
  final String message;

  const ErrorView({@required this.message});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          message,
          style: TextStyle(color: CupertinoColors.destructiveRed),
        ),
      ),
    );
  }
}
