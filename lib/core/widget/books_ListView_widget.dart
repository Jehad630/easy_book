import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/core/widget/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class books_ListView_widget extends StatelessWidget {
  const books_ListView_widget({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, top: 8,left: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:const Color(0xffFFFFFF),
        ),
        child: SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CachedNetworkImage(
                  imageUrl:
                      book.volumeInfo.imageLinks?.thumbnail ??
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0wUdZyXhG2dwDhA2pPng6QSs5jpXVV8jHIz8Z64ZQ2zLqDrgMXSUFvwZ3aOZ9KQW0_mA&usqp=CAU",
                ),
              ),

              SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //book title
                      Text(
                        book.volumeInfo.title.toString(),
                        style: Styles.BookTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                   const   SizedBox(height: 4),
                      // book author
                      Text(
                        book.volumeInfo.authors
                            .toString()
                            .replaceAll("[", "")
                            .replaceAll("]", ""),
                        style: Styles.BookSubTitle.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      //rating
                   const   Text(
                        "5.0 | Based on 23k Reviews",
                        style: Styles.BookSubTitle,
                      ),
                   const   SizedBox(height: 8),
                      //price
                      PriceWidget(
                        currencyCode:
                            book.saleInfo?.listPrice?.currencyCode.toString() ??
                            "",
                        price:
                            book.saleInfo?.listPrice?.amount.toString() ?? "",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 8),

              // buttons
              Padding(
                padding: const EdgeInsets.only(top: 22.0, right: 12),
                child: Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        GoRouter.of(
                          context,
                        ).push(AppRouter.kbookdetalisView, extra: book);
                      },
                      title: 'Grab Now',
                      textcolor: Colors.white,
                      borderRadius: 8,
                      backgroundColor: const Color(0xffDE7773),
                    ),
              const      SizedBox(height: 8),
                    CustomButton(
                      onPressed: () {
                        GoRouter.of(
                          context,
                        ).push(AppRouter.kbookdetalisView, extra: book);
                      },
                      title: 'Learn More',
                      textcolor: Colors.black,
                      borderRadius: 8,
                      backgroundColor: const Color(0xffFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
    required this.currencyCode,
  });
  final String price, currencyCode;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: Styles.BookSubTitle.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        Text(
          currencyCode,
          style: Styles.BookSubTitle.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
