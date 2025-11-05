import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {
  const BuildPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Image.asset(image),
        ),
        SizedBox(height: 50,),
        Text(
          title,
          style: Styles.OnBoardTitle.copyWith(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            subtitle,
            style: Styles.OnBoardSubTitle.copyWith(),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
