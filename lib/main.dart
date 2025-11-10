import 'package:easy_book/core/repo/homeRepoImp.dart';
import 'package:easy_book/core/utilts/ServiceLocater.dart';
import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:easy_book/features/home/presenation/views/view_model/Newset_Book_Cubit/newset_book_cubit.dart';
import 'package:easy_book/features/home/presenation/views/view_model/PopularBooksCubit/popular_books_cubit.dart';
import 'package:easy_book/features/home/presenation/views/view_model/RecomandedBooksCubit/recomanded_books_cubit.dart';
import 'package:easy_book/features/serach/presenation/views/view_model/serach_cubit/serach_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SetupServiceLocater();
  runApp(const EasyBook());
}

class EasyBook extends StatelessWidget {
  const EasyBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PopularBooksCubit(getIt.get<HomeRepoImp>())..fetchPopularBooks(),
        ),
        BlocProvider(
          create: (context) =>
              RecomandedBooksCubit(getIt.get<HomeRepoImp>())
                ..fetchRecomandedBooks(),
        ),
        BlocProvider(
          create: (context) => SerachCubit(getIt.get<HomeRepoImp>()),
          
        ),
        BlocProvider(
          create: (context) =>  NewsetBookCubit(getIt.get<HomeRepoImp>())..getNewstBooks(),
          
        )
      ],

      child:  MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(),
      ),
    );
  }
}
