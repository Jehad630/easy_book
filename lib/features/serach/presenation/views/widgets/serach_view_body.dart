import 'package:easy_book/core/widget/Custom_Loading.dart';
import 'package:easy_book/core/widget/Custom_error_widget.dart';
import 'package:easy_book/core/widget/custom_app_bar.dart';
import 'package:easy_book/features/serach/presenation/views/view_model/cubit/serach_cubit.dart';
import 'package:easy_book/features/serach/presenation/views/widgets/CustomSerachTextfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/books_ListView_widget.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffF4F4F4),

      body: Column(
        children: [
          CustomAppBar(title: "Serach", backgroundColor: Color(0xffF4F4F4)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
            child: CustomSerachTextfiled(),
          ),

          Expanded(
            child: BlocBuilder<SerachCubit, SerachState>(
              builder: (context, state) {
                if (state is SerachSuccess) {
                  final books = state.books;
                  if (books.isEmpty) {
                    return const Center(child: Text("No results found 😢"));
                  } else {
                    return ListView.builder(
                      /*   physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,*/
                      itemCount: state.books.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),

                          child: books_ListView_widget(book: books[index]),
                        );
                      },
                    );
                  }
                } else if (state is SerachFaliure) {
                  return CustomErrorWidget(errmesg: state.errmesg);
                } else if (state is SerachLoading) {
                  return CustomLoading();
                } else {
                  return const Center(
                    child: Text("Type a category and search 🔍"),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
