import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentText extends StatelessWidget {
  final String text;

  const ContentText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Stardust',
        fontSize: Sizes.size32,
        fontWeight: FontWeight.bold,
        color: Color(0xFFEB5C5C),
        height: 1.7,
      ),
    );
  }
}
