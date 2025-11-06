import 'package:easy_book/features/home/presenation/views/widgets/custom_app_bar.dart';
import 'package:easy_book/features/home/presenation/views/widgets/popular_books__list_view.dart';
import 'package:easy_book/features/serach/presenation/views/widgets/CustomSerachTextfiled.dart';
import 'package:flutter/material.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),

      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "Serach", backgroundColor: Color(0xffF4F4F4)),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
              child: CustomSerachTextfiled(),
            ),
            Popular_books_ListView(),
          ],
        ),
      ),
    );
  }
}
