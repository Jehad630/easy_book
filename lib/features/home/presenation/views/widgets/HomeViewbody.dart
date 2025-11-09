import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/features/home/presenation/views/widgets/Recomanded_books_ListView.dart';
import 'package:easy_book/features/home/presenation/views/widgets/book__of__the__week_widget.dart';
import 'package:easy_book/features/home/presenation/views/widgets/custom_app_bar.dart';
import 'package:easy_book/features/home/presenation/views/widgets/popular_books__list_view.dart';
import 'package:flutter/material.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // book of the week section
              const CustomAppBar(
                title: "Book of the week",
                backgroundColor: Color(0xffF4F4F4),
              ),
              Book_Of_The_Week_widget(),

              const SizedBox(height: 25),

              //Recomanded books section
              Text(
                "Recomanded for you",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Recomanded_books_ListView(),

              const SizedBox(height: 50),

              //Popular books section
              Text(
                "Popular books",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Popular_books_ListView(),
              // the end of code
            ],
          ),
        ),
      ),
    );
  }
}
