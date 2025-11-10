import 'package:easy_book/core/widget/Custom_Loading.dart';
import 'package:easy_book/core/widget/Custom_error_widget.dart';
import 'package:easy_book/features/home/presenation/views/view_model/Newset_Book_Cubit/newset_book_cubit.dart';
import 'package:easy_book/features/home/presenation/views/widgets/newest_book_detalis_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class newest_book_widget extends StatelessWidget {
  const newest_book_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        
        if (state is NewsetBookSuccess) {
          return Padding(
            padding: const EdgeInsets.only(right: 16, left: 16),
            // the conatiner for the wiget
            child:  Container(
              height: 205,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(16),
              ),
              child:  newest_book_detalis_widget(
                book: state.books[0],
               
              ),
            ),
          );
        } else if (state is NewsetBookFaliure) {
          return  CustomErrorWidget(errmesg: state.errmesg);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
