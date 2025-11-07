import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'recomanded_books_state.dart';

class RecomandedBooksCubit extends Cubit<RecomandedBooksState> {
  RecomandedBooksCubit() : super(RecomandedBooksInitial());
}
