import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  final String text;
  final Color? color;

  const ContentText({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Stardust',
        fontSize: Sizes.size32,
        fontWeight: FontWeight.bold,
        color: color ?? Theme.of(context).primaryColor,
        height: 1.7,
      ),
    );
  }
}
