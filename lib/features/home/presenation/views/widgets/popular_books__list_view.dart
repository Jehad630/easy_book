import 'package:easy_book/features/home/presenation/views/widgets/popular_books__list_view_widget.dart';
import 'package:flutter/material.dart';

class Popular_books_ListView extends StatelessWidget {
  const Popular_books_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * .325,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Popular_books_ListView_widget(),
            ),
          );
        },
      ),
    );
  }
}
