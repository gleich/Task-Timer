// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:task_timer/routes/home/widgets/buttons.dart';
import 'package:task_timer/routes/home/widgets/clock.dart';

class HomeRoute extends StatelessWidget {
  static const routeName = '/blankTasks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Clock(),
            const SizedBox(
              height: 70,
            ),
            AddButton(),
          ],
        ),
      ),
    );
  }
}
