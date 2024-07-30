import 'package:dalel_egypt/core/function/navigation.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/function/on_boarding_visited.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/widget/custom_nav_bar.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/widget/get_buttons.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/widget/onBoarding_body_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(physics: const BouncingScrollPhysics(), children: [
            const SizedBox(
              height: 40,
            ),
            CustomNavBar(
              onTap: () {
                onBoardingVisited();
                customReplacementNavigation(context, '/signUp');
              },
            ),
            OnBoardingWidgetBody(
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              controller: _controller,
            ),
            const SizedBox(
              height: 130,
            ),
            GetButton(currentIndex: currentIndex, controller: _controller),
            const SizedBox(
              height: 20,
            )
          ]),
        ),
      ),
    );
  }
}
