import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSerachView);
          },
          icon: Icon(Icons.search_rounded, size: 32),
        ),
      ],
    );
  }
}
