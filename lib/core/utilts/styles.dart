import 'package:easy_book/core/constants/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: kHKGrotesk,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const OnBoardTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const OnBoardSubTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const SplashViewText = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static const BookTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: booktextcolor,
    // fontFamily: kHKGrotesk,
  );
  static const BookSubTitle = TextStyle(
    fontSize: 10,
    color: booktextcolor,
    fontWeight: FontWeight.normal,
  );
}
