import 'package:dalel_egypt/core/function/app_functions.dart';
import 'package:dalel_egypt/fetures/auth/presentation/views/sign_up.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/widget/custom_nav_bar.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/widget/get_buttons.dart';
import 'package:dalel_egypt/fetures/on_boarding/presentation/widget/onBoarding_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
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
                customReplacementNavigation(context, const SignUpView());
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
