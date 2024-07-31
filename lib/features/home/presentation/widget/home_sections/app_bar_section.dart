import 'package:dalel_egypt/features/home/presentation/widget/home_app_bar_widget.dart';
import 'package:flutter/cupertino.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        HomeViewAppBar(),
        SizedBox(height: 30),
      ],
    );
  }
}
