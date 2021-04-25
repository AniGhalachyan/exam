import 'package:exam/exam_page1.dart';
import 'package:exam/exam_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// import 'exam_page2.dart';

class Exam extends StatefulWidget {
  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            title: Text('Chat'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return CupertinoPageExampleOne();
                break;
              case 1:
                return CupertinoPageExampleTwo();
                break;
              default:
                return Container();
            }
          },
        );
      },
    );
  }
}
