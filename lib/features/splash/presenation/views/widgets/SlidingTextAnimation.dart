import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({super.key, required this.sildingAnimtion});

  final Animation<Offset> sildingAnimtion;
  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
      animation: sildingAnimtion,
      builder: (context, _) {
        return  SlideTransition(
          position: sildingAnimtion,
          child:const Text("EASY BOOK", style: Styles.SplashViewText),
        );
      },
    );
  }
}
