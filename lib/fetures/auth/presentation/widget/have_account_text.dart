import 'package:flutter/material.dart';

class HaveAnAccountText extends StatelessWidget {
  const HaveAnAccountText(
      {super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: text1),
        TextSpan(text: text2),
      ])),
    );
  }
}
