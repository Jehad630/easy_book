import 'package:easy_book/features/home/presenation/views/widgets/book__of__the__week_widget.dart';
import 'package:easy_book/features/home/presenation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "Book of the week"),
            Book_Of_The_Week_widget(),
          ],
        ),
      ),
    );
  }
}
