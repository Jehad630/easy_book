import 'package:easy_book/features/home/presenation/views/widgets/custom_book_widget.dart';
import 'package:easy_book/features/onBoardView/presenation/view/widgets/bottomsheet_onboard.dart';
import 'package:flutter/material.dart';

class Recomanded_books_ListView extends StatelessWidget {
  const Recomanded_books_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(onTap: () {}, child: CustomBookWidget()),
              );
            },
          ),
        ),
      ],
    );
  }
}
