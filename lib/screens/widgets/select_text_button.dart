import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';

class SelectTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const SelectTextButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size14,
            horizontal: Sizes.size16,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).focusColor,
            borderRadius: const BorderRadius.all(
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
      ),
    );
  }
}
