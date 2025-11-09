import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class author_card extends StatelessWidget {
  const author_card({super.key, required this.authorname});

  final String authorname;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Author",
                    style: Styles.textStyle14.copyWith(
                      color: Colors.blueGrey,
                      fontSize: 10,
                    ),
                  ),
                  //Author name section
                  Text(
                    authorname,
                    style: Styles.textStyle18.copyWith(
                      color: const Color(0xff171B36),
                    ),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            const Icon(Icons.star, color: Colors.grey, size: 22),
          ],
        ),
      ),
    );
  }
}
