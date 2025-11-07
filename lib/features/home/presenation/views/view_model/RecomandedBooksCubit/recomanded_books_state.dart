part of 'recomanded_books_cubit.dart';

sealed class RecomandedBooksState extends Equatable {
  const RecomandedBooksState();

  @override
  List<Object> get props => [];
}

final class RecomandedBooksInitial extends RecomandedBooksState {}

final class RecomandedBooksLoading extends RecomandedBooksState {}

final class RecomandedBooksSuccess extends RecomandedBooksState {
  final List<BookModel> books;
  const RecomandedBooksSuccess(this.books);
}

final class RecomandedBooksFaliure extends RecomandedBooksState {
  final String errmesg;
  const RecomandedBooksFaliure(this.errmesg);
}
