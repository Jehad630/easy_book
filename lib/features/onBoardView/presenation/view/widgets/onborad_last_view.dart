import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class OnboradLastView extends StatelessWidget {
  const OnboradLastView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(image)),
        Positioned(
          top: 630,
          left: 50,
          right: 50,
          child: Text(
            title,
            style: Styles.OnBoardTitle,
            textAlign: TextAlign.center,
          ),
        ),

        SizedBox(height: 15),
        Positioned(
          top: 730,
          left: 50,
          right: 50,
          child: Text(
            subtitle,
            style: Styles.OnBoardSubTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
