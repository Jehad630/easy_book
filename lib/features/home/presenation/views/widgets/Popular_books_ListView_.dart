import 'package:easy_book/core/widget/Custom_Loading.dart';
import 'package:easy_book/core/widget/Custom_error_widget.dart';
import 'package:easy_book/features/home/presenation/views/view_model/PopularBooksCubit/popular_books_cubit.dart';
import 'package:easy_book/core/widget/books_ListView_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Popular_books_ListView extends StatelessWidget {
  const Popular_books_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularBooksCubit, PopularBooksState>(
      builder: (context, state) {
        if (state is PopularBooksSuccess) {
          return  Expanded(
            // height: MediaQuery.of(context).size.height * .325,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),

                  child: books_ListView_widget(
                    book: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is PopularBooksFaliure) {
          return CustomErrorWidget(errmesg: state.errmesg);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
