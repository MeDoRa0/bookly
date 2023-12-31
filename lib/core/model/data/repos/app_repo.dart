import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AppRepo {
  //future because it will take time.
  //i can determine 2 types using Either, it take 2 sides, the right side will return list of book model and the left side will return Failure
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String userSearch});
  Future<Either<Failure, List<BookModel>>> fetchSimllerBooks(
      {required String category});
}
