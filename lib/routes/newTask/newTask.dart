// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:task_timer/routes/newTask/widgets/text.dart';

class NewTaskRoute extends StatefulWidget {
  static const routeName = '/newTask';

  @override
  _NewTaskRouteState createState() => _NewTaskRouteState();
}

class _NewTaskRouteState extends State<NewTaskRoute> {
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
          children: <Widget>[
            StepTitle('Name:'),
            const SizedBox(
              width: 50,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type in here!',
              ),
            )
          ],
        ),
      ),
    );
  }
}
