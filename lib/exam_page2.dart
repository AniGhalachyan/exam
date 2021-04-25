import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPageExampleTwo extends StatefulWidget {
  @override
  CupertinoPageExampleTwoState createState() => CupertinoPageExampleTwoState();
}

class CupertinoPageExampleTwoState extends State<CupertinoPageExampleTwo> {
  double _value = 50.0;
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Let's Chat"),
        trailing: Icon(CupertinoIcons.back),
        leading: Icon(CupertinoIcons.battery_full),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CupertinoButton(
              child: Text('Button'),
              onPressed: () {},
            ),
            CupertinoSlider(
              value: _value,
              min: 0.0,
              max: 100.0,
              onChanged: (double value) {
                setState(() => _value = value);
              },
              activeColor: CupertinoColors.activeGreen,
            ),
            CupertinoSwitch(
              activeColor: Colors.blue,
              value: _switchValue,
              onChanged: (bool value) {
                setState(() => _switchValue = value);
              },
            ),
            Text(
              'This is Themed Text',
              style: Theme.of(context).textTheme.button,
            ),
          ],
        ),
      ),
    );
  }
}
