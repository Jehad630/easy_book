import 'package:bloc/bloc.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/repo/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'popular_books_state.dart';

class PopularBooksCubit extends Cubit<PopularBooksState> {
  PopularBooksCubit(this.homeRepo) : super(PopularBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchPopularBooks() async {
    // loaading state
    emit(PopularBooksLoading());
    // getting the data feom the api using homerepo
    var result = await homeRepo.fetchPopularBooks();
    // the results of data with Either Package will have 1 of 2 answers
    // faliure ==>left side   or    books ==> right side
    result.fold(
      (failure) {
        // will send a message to the faliure class
        emit(PopularBooksFaliure(failure.errmesg));
      },
      (books) {
        // will send the books detalis to the cubit
        emit(PopularBooksSuccess(books));
      },
    );
  }
}
