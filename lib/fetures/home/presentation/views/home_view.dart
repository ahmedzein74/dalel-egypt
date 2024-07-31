import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                customReplacementNavigation(context, '/signIn');
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
