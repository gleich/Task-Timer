// 🎯 Dart imports:
import 'dart:async';

// 📱 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  String _timeString;
  Timer _timer;

  @override
  void initState() {
    _timeString = _getCurrentTime();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer t) => setState(() {
        _timeString = _getCurrentTime();
      }),
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _getCurrentTime() {
    return DateFormat('Hms').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _timeString,
      style: TextStyle(fontSize: 100),
    );
  }
}
