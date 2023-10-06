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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Stardust',
            fontSize: Sizes.size20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}
