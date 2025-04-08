import 'package:flutter/material.dart';

class Middot extends StatelessWidget {
  final double marginT;
  final double marginL;
  final double marginR;
  final double marginB;
  const Middot({
    this.marginB = 8,
    this.marginT = 12,
    this.marginL = 8,
    this.marginR = 8,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      margin: EdgeInsets.fromLTRB(marginL, marginT, marginR, marginB),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
    );
  }
}

class MiddotLine extends StatelessWidget {
  final String text;
  final String boldText;
  const MiddotLine(this.text, this.boldText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Middot(),
        RichText(
          text: TextSpan(
            text: text,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'NotoSansKR',
              height: 1.8,
            ),
            children: [
              TextSpan(
                text: boldText,
                style: const TextStyle(
                  fontFamily: 'NotoSansKR',
                  fontSize: 16,
                  height: 1.8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
