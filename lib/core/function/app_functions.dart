import 'package:flutter/material.dart';

void customNavigation(BuildContext context, Widget targetScreen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => targetScreen),
  );
}

void customReplacementNavigation(BuildContext context, Widget targetScreen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => targetScreen),
  );
}
