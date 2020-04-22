// Flutter imports:
import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  @override
  _AddButtonState createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  var mouseHovering = false;

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          mouseHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          mouseHovering = false;
        });
      },
      child: CircleAvatar(
        backgroundColor: mouseHovering
            ? brightness == Brightness.light ? Colors.black : Colors.white
            : Colors.green,
        maxRadius: 35,
        child: Icon(
          Icons.add,
          color: mouseHovering
              ? brightness == Brightness.light ? Colors.white : Colors.black
              : Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
