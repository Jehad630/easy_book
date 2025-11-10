import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class custom_Card extends StatelessWidget {
  const custom_Card({
    super.key,
    required this.hint,
    required this.title,
    required this.height,
    required this.width,
  });

  final String hint, title;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
                    hint,
                    style: Styles.textStyle14.copyWith(
                      color: Colors.blueGrey,
                      fontSize: 10,
                    ),
                  ),
                  //Author name section
                  Text(
                    title,
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
          ],
        ),
      ),
    );
  }
}
