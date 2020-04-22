// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:task_timer/routes/home/home.dart';
import 'package:task_timer/routes/newTask/newTask.dart';
import 'package:task_timer/themes.dart';

void main() => runApp(TaskTimerApp());

class TaskTimerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Timer',
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeRoute.routeName,
      routes: {
        HomeRoute.routeName: (ctx) => HomeRoute(),
        NewTaskRoute.routeName: (ctx) => NewTaskRoute(),
      },
    );
  }
}
