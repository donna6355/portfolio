import 'package:flutter/material.dart';

class SkillBadge extends StatelessWidget {
  final String img;
  const SkillBadge(this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Image.asset(img, height: 24),
    );
  }
}
