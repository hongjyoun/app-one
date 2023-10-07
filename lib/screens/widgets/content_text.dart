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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            text,
            softWrap: true,
            style: TextStyle(
              fontFamily: 'Stardust',
              fontSize: Sizes.size28,
              fontWeight: FontWeight.bold,
              color: color ?? Theme.of(context).primaryColor,
              height: 1.7,
            ),
          ),
        ),
      ],
    );
  }
}
