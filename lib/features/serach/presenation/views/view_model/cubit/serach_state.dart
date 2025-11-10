part of 'serach_cubit.dart';

sealed class SerachState extends Equatable {
  const SerachState();

  @override
  List<Object> get props => [];
}

final class SerachInitial extends SerachState {}

final class SerachSuccess extends SerachState {
  final List<BookModel> books;
  const SerachSuccess(this.books);
}

final class SerachFaliure extends SerachState {
  final String errmesg;
  const SerachFaliure(this.errmesg);
}

final class SerachLoading extends SerachState {}
