import 'package:dartz/dartz.dart';
import 'package:easy_book/core/errors/Failure.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';

abstract class homeRepo {
  Future<Either<Failure, List<BookModel>>> fetchRecomandedBooks();
  Future<Either<Failure, List<BookModel>>> fetchPopularBooks();
  Future<Either<Failure, List<BookModel>>> fetchSerachBooks(String cateGory);
}
