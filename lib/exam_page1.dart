import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageExampleOne extends StatefulWidget {
  @override
  _CupertinoPageExampleOneState createState() =>
      _CupertinoPageExampleOneState();
}

class _CupertinoPageExampleOneState extends State<CupertinoPageExampleOne> {
  // bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Home'),
          leading: Icon(CupertinoIcons.book),
        ),
      ],
    ));
  }
}
