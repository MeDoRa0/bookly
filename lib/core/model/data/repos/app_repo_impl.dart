import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/model/data/repos/app_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AppRepoImpl implements AppRepo {
  //creating object of ApiService called apiService
  final ApiService apiService;

  AppRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          //we get the end point from api in postman after selecting filtering=free ebooks, sorting=newest
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=computer scince');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      // i determine that the return is the right side its value list of books
      return right(books);
    } catch (e) {
      if (e is DioException) {
        // this will show the message error in failuer class
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      // non DioException messages
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          //we get the end point from api in postman after selecting filtering=free ebooks
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      // i determine that the return is the right side its value list of books
      return right(books);
    } catch (e) {
      if (e is DioException) {
        // this will show the message error in failuer class
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      // non DioException messages
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimllerBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          //we get the end point from api in postman after selecting filtering=free ebooks, sorting=newest
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=computer scince');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      // i determine that the return is the right side its value list of books
      return right(books);
    } catch (e) {
      if (e is DioException) {
        // this will show the message error in failuer class
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      // non DioException messages
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
  //search repo implmentation
 @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({required String userSearch}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=intitle:$userSearch');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      // i determine that the return is the right side its value list of books
      return right(books);
    } catch (e) {
      if (e is DioException) {
        // this will show the message error in failuer class
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      // non DioException messages
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
