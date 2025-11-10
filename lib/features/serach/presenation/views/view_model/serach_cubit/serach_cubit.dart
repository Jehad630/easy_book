import 'package:bloc/bloc.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/repo/homeRepo.dart';
import 'package:equatable/equatable.dart';

part 'serach_state.dart';

class SerachCubit extends Cubit<SerachState> {
  SerachCubit(this.homeRepo) : super(SerachInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSerachBooks(String cateGory) async {
    emit(SerachLoading());
    final result = await homeRepo.fetchSerachBooks(cateGory);
    result.fold(
      (failure) => emit(SerachFaliure(failure.errmesg)),
      (books) => emit(SerachSuccess(books)),
    );
  }
}
