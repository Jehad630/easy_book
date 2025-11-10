part of 'newset_book_cubit.dart';

sealed class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

final class NewsetBookInitial extends NewsetBookState {}

final class NewsetBookSuccess extends NewsetBookState {
  final List<BookModel> books;
  const NewsetBookSuccess(this.books);
}

final class NewsetBookFaliure extends NewsetBookState {
  final String errmesg;
  const NewsetBookFaliure(this.errmesg);
}

final class NewsetBookLoading extends NewsetBookState {}
