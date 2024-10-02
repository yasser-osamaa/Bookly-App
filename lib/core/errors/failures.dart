import 'package:dio/dio.dart';

abstract class Failures {
  final String errMsg;

  Failures({required this.errMsg});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMsg});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMsg: 'Connection time Out with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMsg: 'Send time Out with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMsg: 'Receive time Out with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMsg: 'Browser fails to validate your certificate');
      case DioExceptionType.cancel:
        return ServerFailure(errMsg: 'Request was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errMsg: 'No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMsg: 'Oops There was An Error, Please try again');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      default:
        return ServerFailure(
            errMsg: 'Oops There was An Error, Please try again');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMsg: '404 Not Found Error');
    } else {
      return ServerFailure(errMsg: 'Oops There was An Error, Please try again');
    }
  }
}
