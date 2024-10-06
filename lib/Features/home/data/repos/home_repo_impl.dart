import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_serviec.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServiec apiServiec;

  HomeRepoImpl({required this.apiServiec});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServiec.get(
          endPoint:
              'volumes?q=Harry Potter&Filtering=free-ebooks&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await ApiServiec(Dio())
          .get(endPoint: 'volumes?q=deadbool&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilerBooks(
      {required String category}) async {
    try {
      var data = await ApiServiec(Dio()).get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=$category');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMsg: e.toString()));
    }
  }
}
