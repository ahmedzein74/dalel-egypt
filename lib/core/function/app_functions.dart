import 'package:flutter/material.dart';

void customNavigation(BuildContext context, Widget targetScreen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => targetScreen),
  );
}
