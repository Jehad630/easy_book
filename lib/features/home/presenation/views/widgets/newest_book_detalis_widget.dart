import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/core/widget/BookButtons.dart';
import 'package:easy_book/core/widget/Custom_Loading.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class newest_book_detalis_widget extends StatelessWidget {
  const newest_book_detalis_widget({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //   book image
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:  AspectRatio(
            aspectRatio: 2 / 3.3,
            child: CachedNetworkImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "",
              fit: BoxFit.fill,
              placeholder: (context, url) => const CustomLoading(),
              errorWidget: (context, url, error) =>
               const   Icon(Icons.error, color: Colors.red, size: 64),
            ),
          ),
        ),

        // book detalis
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //book title
                Text(
                  book.volumeInfo.title?.toString() ?? "",
                  style: Styles.BookTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),

                // book desc
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    book.volumeInfo.description?.toString() ?? "",
                    maxLines: 5,
                    style: Styles.BookSubTitle.copyWith(
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 4.0,
                          color: Colors.grey.withOpacity(1),
                        ),
                      ],
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.start,
                  ),
                ),
            const    SizedBox(height: 8),

                // buttons
                BookButtons(
                  direction: Axis.horizontal,
                  height: 35,
                  width: 100,
                  LearnButton: () {
                    GoRouter.of(
                      context,
                    ).push(AppRouter.kbookdetalisView, extra: book);
                  },
                  grabButton: () {
                    GoRouter.of(
                      context,
                    ).push(AppRouter.kbookdetalisView, extra: book);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
