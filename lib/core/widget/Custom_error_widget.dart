import 'package:easy_book/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errmesg});
  final String errmesg;
  @override
  Widget build(BuildContext context) {
    return  Text(errmesg, style: Styles.textStyle18);
  }
}
