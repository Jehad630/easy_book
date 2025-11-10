import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/core/widget/Custom_Button.dart';
import 'package:easy_book/features/home/presenation/views/widgets/about_the_book_section.dart';
import 'package:easy_book/features/home/presenation/views/widgets/custom_Card.dart';
import 'package:easy_book/features/home/presenation/views/widgets/book_detalis_blue_widget.dart';
import 'package:easy_book/core/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilts/Funcetions.dart';

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
                  child: custom_Card(
                    hint: 'Author',
                    title:
                        book.volumeInfo.authors?.join(', ') ?? 'Unknown Author',
                    height: 80,
                    width: 350,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            // 🔹 About the book section
            about_the_book_section(
              description:
                  book.volumeInfo.description?.toString() ??
                  "No Avalible description",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16,
              ),
              child: GridView.count(
                physics:
                    NeverScrollableScrollPhysics(), // so it doesn’t scroll inside Column
                shrinkWrap: true, // take minimum space
                crossAxisCount: 2, // 2 cards per row
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio:
                    150 / 80, // width / height ratio of your cards
                children: [
                  custom_Card(
                    hint: "Publisher",
                    title: book.volumeInfo.publisher ?? "Unknown Publisher",
                    height: 80,
                    width: 150,
                  ),
                  custom_Card(
                    hint: "Published Date",
                    title: book.volumeInfo.publishedDate ?? "",
                    height: 80,
                    width: 150,
                  ),
                  custom_Card(
                    hint: "Page Count",
                    title: book.volumeInfo.pageCount?.toString() ?? "Unknown",
                    height: 80,
                    width: 150,
                  ),
                  custom_Card(
                    hint: "Category",
                    title: book.volumeInfo.categories?.join(', ') ?? "Unknown",
                    height: 80,
                    width: 150,
                  ),
                ],
              ),
            ),
            if (book.accessInfo?.pdf?.acsTokenLink != null)
              CustomButton(
                title: "Preview",
                textcolor: Colors.white,
                borderRadius: 12,
                backgroundColor: Color(0xff171B36),
                height: 80,
                width: 300,
                style: TextStyle(color: Colors.white, fontSize: 26),
                onPressed: () async {
                  launchCustomUrl(context, book.volumeInfo.previewLink!);
                },
              ),
          ],
        ),
      ),
    );
  }
}
