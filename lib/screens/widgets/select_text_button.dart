import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';

class SelectTextButton extends StatelessWidget {
  final String text;

  const SelectTextButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size14,
          horizontal: Sizes.size16,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFF220523),
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.size20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Stardust',
            fontSize: Sizes.size20,
            fontWeight: FontWeight.bold,
            color: Colors.white60,
            height: 1.7,
          ),
        ),
      ),
    );
  }
}
