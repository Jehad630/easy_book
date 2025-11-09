import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/features/home/presenation/views/widgets/book__details__view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: Book_Details_ViewBody(book: book,),
    );
  }
}
