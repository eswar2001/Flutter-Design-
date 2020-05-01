import 'package:flutter/material.dart';

Widget inkwellButton(String s, Color color,Color text) {
  return FloatingActionButton(
    backgroundColor: color,
    onPressed: () {},
    disabledElevation: 0.0,
    mini: true,
    child: Text(
      s,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: text,
        fontSize: 20.0,
      ),
    ),
  );
}
