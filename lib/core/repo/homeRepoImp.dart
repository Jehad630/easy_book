import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_book/core/errors/Failure.dart';
import 'package:easy_book/core/model/book_model/book_model.dart';
import 'package:easy_book/core/repo/homeRepo.dart';
import 'package:easy_book/core/utilts/ApiService.dart';

class HomeRepoImp implements HomeRepo {
  final Apiservice apiservice;
  HomeRepoImp(this.apiservice);

  @override
  Future<Either<Failure, List<BookModel>>> fetchRecomandedBooks() async {
    try {
      var data = await apiservice.get(
        endpoint:
            "/volumes?q=subject:computer science&Filetring=free-ebooks&maxResults=12&projection=full",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          return left(serverFaliure(e.toString()));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFaliure.fromDioError(e));
      } else {
        return left(serverFaliure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchPopularBooks() async {
    try {
      var data = await apiservice.get(
        endpoint: "/volumes?q=subject:Programming",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        try {
          if (BookModel.fromJson(item).volumeInfo.imageLinks?.thumbnail ==
              null) {
            continue;
          } else {
            books.add(BookModel.fromJson(item));
          }
        } catch (e) {
          return left(serverFaliure(e.toString()));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFaliure.fromDioError(e));
      } else {
        return left(serverFaliure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSerachBooks(
    String cateGory,
  ) async {
    try {
      var data = await apiservice.get(
        endpoint: "/volumes?Filtering=free-ebooks&q=subject:$cateGory",
      );
      List<BookModel> books = [];
      if (data["items"] != null) {
        for (var item in data["items"]) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFaliure.fromDioError(e));
      } else {
        return left(serverFaliure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBook() async {
    try {
      var data = await apiservice.get(
        endpoint: "/volumes?q=subject:Programming&orderBy=newest",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        try {
          if (BookModel.fromJson(item).volumeInfo.imageLinks?.thumbnail ==
              null) {
            continue;
          } else {
            books.add(BookModel.fromJson(item));
          }
        } catch (e) {
          return left(serverFaliure(e.toString()));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFaliure.fromDioError(e));
      } else {
        return left(serverFaliure(e.toString()));
      }
    }
  }
}
