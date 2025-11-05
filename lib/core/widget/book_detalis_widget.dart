import 'package:easy_book/core/utilts/styles.dart';
import 'package:easy_book/core/widget/BookButtons.dart';
import 'package:flutter/material.dart';

class book_detalis_widget extends StatelessWidget {
  const book_detalis_widget({
    super.key,
    required this.ImageLink,
    required this.title,
    required this.subtitle,
  });

  final String ImageLink, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //   book image
        Image.asset(ImageLink, height: double.infinity, fit: BoxFit.cover),

        // book detalis
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //book title
                Text(
                  title,
                  style: Styles.BookTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),

                // book desc
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    subtitle,
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
                SizedBox(height: 8),

                // buttons
                BookButtons(direction: Axis.horizontal),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
