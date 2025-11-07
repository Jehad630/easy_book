part of 'popular_books_cubit.dart';

sealed class PopularBooksState extends Equatable {
  const PopularBooksState();

  @override
  List<Object> get props => [];
}

final class PopularBooksInitial extends PopularBooksState {}

final class RecomandedBooksInitial extends PopularBooksState {}

final class PopularBooksLoading extends PopularBooksState {}

final class PopularBooksSuccess extends PopularBooksState {
  final List<BookModel> books;
  const PopularBooksSuccess(this.books);
}

final class PopularBooksFaliure extends PopularBooksState {
  final String errmesg;
  const PopularBooksFaliure(this.errmesg);
}
