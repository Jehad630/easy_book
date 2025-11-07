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
  });
  final String title;
  final Color backgroundColor;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_sharp, size: 32),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style:
                style ??
                Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff292B38),
                ),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSerachView);
            },
            icon: Icon(Icons.search_rounded, size: 32),
          ),
        ],
      ),
    );
  }
}
