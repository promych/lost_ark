import 'package:flutter/cupertino.dart';

import '../helpers/theme.dart';
import '../screens/simple_page.dart';

class ErrorView extends StatelessWidget {
  final String message;

  const ErrorView({@required this.message});

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'Lost Ark',
      child: Center(
        child: Text(message, style: TextStyle(color: Styles.lightGrey)),
      ),
    );
  }
}
