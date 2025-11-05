import 'package:flutter/material.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({super.key, required this.sildingAnimtion});

  final Animation<Offset> sildingAnimtion;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sildingAnimtion,
      builder: (context, _) {
        return SlideTransition(
          position: sildingAnimtion,
          child: Text(
            "EASY BOOK",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
