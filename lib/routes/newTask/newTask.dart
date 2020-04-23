// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:task_timer/routes/newTask/name.dart';

class NewTaskRoute extends StatelessWidget {
  static const routeName = '/newTask';

  @override
  Widget build(BuildContext context) {
    return NewTaskNameRoute();
  }
}
