// 🎯 Dart imports:
import 'dart:io';

// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:task_timer/routes/newTask/category.dart';
import 'package:task_timer/routes/newTask/widgets/text.dart';

class NewTaskNameRoute extends StatelessWidget {
  static const routeName = '/newTask/name';

  @override
  Widget build(BuildContext context) {
    final _taskLocation = Directory(Directory.current.path + '/tasks');
    if (!_taskLocation.existsSync()) {
      _taskLocation.createSync();
    }

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            StepTitle('Name:'),
            const SizedBox(
              width: 50,
            ),
            Container(
              width: 600,
              padding: const EdgeInsets.only(top: 29),
              child: TextField(
                cursorColor: Theme.of(context).accentColor,
                maxLength: 30,
                autofocus: true,
                style: TextStyle(
                  fontSize: 70,
                  color: Theme.of(context).accentColor,
                  height: 1,
                ),
                onSubmitted: (value) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => NewTaskCategoryRoute(value),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
