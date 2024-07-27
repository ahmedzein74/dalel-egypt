import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customNavigation(BuildContext context, String targetScreen) {
  GoRouter.of(context).pushReplacement(targetScreen);
}

void customReplacementNavigation(BuildContext context, String targetScreen) {
  GoRouter.of(context).pushReplacement(targetScreen);
}
