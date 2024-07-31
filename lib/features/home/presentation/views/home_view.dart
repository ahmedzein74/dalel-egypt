import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                customReplacementNavigation(context, '/signIn');
              },
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
