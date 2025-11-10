import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class book_detalis_blue_widget extends StatelessWidget {
  const book_detalis_blue_widget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.desc,
    required this.price,
    required this.currencyCode,
  });
  final String imageUrl, title, desc, price, currencyCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff171B36), // navy blue
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      // book deatlis section in Blue section
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: SizedBox(
              height: 150,
              width: 120,
              child: CachedNetworkImage(imageUrl: imageUrl),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //book title
                Text(
                  title,
                  style: Styles.textStyle18.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                SizedBox(height: 10),
                // book description
                Text(
                  desc,
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: Styles.textStyle14.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      currencyCode,
                      style: Styles.textStyle14.copyWith(
                        color: Colors.white,                      
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 22),
                    Icon(Icons.star, color: Colors.amber, size: 22),
                    Icon(Icons.star, color: Colors.amber, size: 22),
                    Icon(Icons.star, color: Colors.amber, size: 22),
                    Icon(Icons.star, color: Colors.amber, size: 22),
                    Text(
                      "  (5.0)",
                      style: Styles.textStyle14.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
