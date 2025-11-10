import 'package:easy_book/features/home/presenation/views/widgets/book_of_the_week_detalis_widget.dart';
import 'package:flutter/material.dart';

class Book_Of_The_Week_widget extends StatelessWidget {
  const Book_Of_The_Week_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16),
      // the conatiner for the wiget
      child: Container(
        height: 205,
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(16),
        ),
        child: book_of_the_week_detalis_widget(
          ImageLink: "assets/images/Mask group.png",
          title: "The psychology of money",
          subtitle:
              "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
        ),
      ),
    );
  }
}
