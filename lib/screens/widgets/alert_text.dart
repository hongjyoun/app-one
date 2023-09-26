import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';

class AlertText extends StatelessWidget {
  final String text;

  const AlertText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: const TextStyle(
        fontFamily: 'Stardust',
        fontSize: Sizes.size20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        height: 1.7,
      ),
    );
  }
}
