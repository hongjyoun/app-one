import 'package:app_one/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;

  const RoundIconButton({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, // 아이콘 버튼을 눌렀을 때 수행할 작업
      customBorder: const CircleBorder(),
      child: Container(
        width: Sizes.size48, // 원하는 크기로 조정
        height: Sizes.size48,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Center(
          child: FaIcon(icon, color: color),
        ),
      ),
    );
  }
}
