import 'package:bloc/bloc.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/repo/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());
  final HomeRepo homeRepo;

  Future<void> getNewstBooks() async {
    
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchNewsetBook();
    // the results of data with Either Package will have 1 of 2 answers
    // faliure ==>left side   or    books ==> right side
    result.fold(
      (failure) {
        // will send a message to the faliure class
        emit(NewsetBookFaliure(failure.errmesg));
      },
      (books) {
        // will send the books detalis to the cubit
        emit(NewsetBookSuccess(books));
      },
    );
  }
}
