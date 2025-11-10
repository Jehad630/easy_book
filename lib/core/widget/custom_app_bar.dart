import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.backgroundColor,
    this.style,
    this.serachIcon = true,
  });
  final String title;
  final Color backgroundColor;
  final TextStyle? style;
  final bool serachIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            //  padding: EdgeInsets.all(8),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_sharp, size: 32),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,

              textAlign: TextAlign.center,
              style:
                  style ??
                  Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff292B38),
                  ),
            ),
          ),
          if (serachIcon)
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSerachView);
              },

              icon: Icon(Icons.search_rounded, size: 32),
            ),
          if (serachIcon == false)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.book),
            ),
        ],
      ),
    );
  }
}
