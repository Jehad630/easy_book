import 'package:easy_book/core/widget/Custom_Button.dart';
import 'package:flutter/material.dart';

class BookButtons extends StatelessWidget {
  final Axis
  direction; //control layout direction (horizontal = Row, vertical = Column)

  const BookButtons({
    super.key,
    required this.direction,
    this.grabButton,
    this.LearnButton,
    required this.width,
    required this.height,
  });

  final void Function()? grabButton, LearnButton;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction, // use direction to switch between Row / Column
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // grab now button
        CustomButton(
          onPressed: grabButton,
          borderRadius: 8,
          title: 'Grab Now',
          backgroundColor: const Color(0xffDE7773),
          textcolor: Colors.white,
        ),

        // Add space depending on layout type
        direction == Axis.horizontal
            ? const SizedBox(width: 8)
            : const SizedBox(height: 8),

        // learn more button
        CustomButton(
          onPressed: LearnButton,
          borderRadius: 8,
          title: 'Learn More',
          textcolor: Colors.black,
        ),
      ],
    );
  }
}
