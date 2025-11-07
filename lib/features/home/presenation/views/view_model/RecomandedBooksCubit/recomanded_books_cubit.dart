import 'package:bloc/bloc.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/repo/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'recomanded_books_state.dart';

class RecomandedBooksCubit extends Cubit<RecomandedBooksState> {
  RecomandedBooksCubit(this.homeRepo) : super(RecomandedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchRecomandedBooks() async {
    // loaading state
    emit(RecomandedBooksLoading());
    // getting the data feom the api using homerepo
    var result = await homeRepo.fetchRecomandedBooks();
    // the results of data with Either Package will have 1 of 2 answers
    // faliure ==>left side   or    books ==> right side
    result.fold(
      (failure) {
        // will send a message to the faliure class
        emit(RecomandedBooksFaliure(failure.errmesg));
      },
      (books) {
        // will send the books detalis to the cubit
        emit(RecomandedBooksSuccess(books));
      },
    );
  }
}
