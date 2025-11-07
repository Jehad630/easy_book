import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/core/widget/Custom_Loading.dart';
import 'package:easy_book/core/widget/Custom_error_widget.dart';
import 'package:easy_book/features/home/presenation/views/view_model/RecomandedBooksCubit/recomanded_books_cubit.dart';
import 'package:easy_book/features/home/presenation/views/widgets/custom_book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Recomanded_books_ListView extends StatelessWidget {
  const Recomanded_books_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecomandedBooksCubit, RecomandedBooksState>(
      builder: (context, state) {
        if (state is RecomandedBooksSuccess) {
          print("RecomandedBooksSuccess");
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kbookdetalisView);
                        },
                        child: CustomBookWidget(
                          ImageLink:
                              state
                                  .books[index]
                                  .volumeInfo
                                  .imageLinks
                                  ?.thumbnail ??
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0wUdZyXhG2dwDhA2pPng6QSs5jpXVV8jHIz8Z64ZQ2zLqDrgMXSUFvwZ3aOZ9KQW0_mA&usqp=CAU",
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        } else if (state is RecomandedBooksFaliure) {
          print("RecomandedBooksFaliure");
          return CustomErrorWidget(errmesg: state.errmesg);
        } else {
          print("CustomLoading");
          return const CustomLoading();
        }
      },
    );
  }
}
