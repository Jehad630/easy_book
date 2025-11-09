import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/features/home/presenation/views/widgets/about_the_book_section.dart';
import 'package:easy_book/features/home/presenation/views/widgets/author_card.dart';
import 'package:easy_book/features/home/presenation/views/widgets/book_detalis_blue_widget.dart';
import 'package:easy_book/features/home/presenation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Book_Details_ViewBody extends StatelessWidget {
  const Book_Details_ViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            // 🔹 Top section with blue background + floating card
            CustomAppBar(
              title: "Book Detalis",
              backgroundColor: Color(0xff171B36),
              style: Styles.textStyle20.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Blue section
                book_detalis_blue_widget(
                  imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "",
                  title: book.volumeInfo.title.toString(),
                  desc:
                      book.volumeInfo.description?.toString() ??
                      "No Avalible description",
                  price: book.saleInfo?.listPrice?.amount.toString() ?? "",
                  currencyCode:
                      book.saleInfo?.listPrice?.currencyCode.toString() ?? "",
                ),

                // 🔸 Floating author card
                Positioned(
                  bottom: -50,
                  left: 50,
                  right: 50,
                  child: author_card(
                    authorname:
                        (book.volumeInfo.authors?.join(', ') ??
                        'Unknown Author'),
                  ),
                ),
              ],
            ),
            // 🔹 About the book section
            about_the_book_section(
              description:
                  book.volumeInfo.description?.toString() ??
                  "No Avalible description",
            ),
          ],
        ),
      ),
    );
  }
}
