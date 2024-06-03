import 'package:dio/dio.dart';

abstract class Failure {

  final String failureMessage;
  Failure(this.failureMessage);

}

class ServerFailure extends Failure{
  ServerFailure(super.failureMessage);

  factory ServerFailure.fromDioException(DioException e){
    switch(e.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with API Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with API Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve Timeout with API Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with API Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(e.response!.statusCode! , e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to API Server was Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps there was an Error , please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode , dynamic response){
    if(statusCode == 404 ) { return ServerFailure('Your Request was NOT Found , please try again'); } else
    if(statusCode == 500 ) { return ServerFailure('There is a Problem with The Server , please try again'); } else
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){ return ServerFailure(response['error']['message']); } else 
    { return ServerFailure('There Was an Error , please try again'); }
  }

}

class CasheFailure extends Failure{
  CasheFailure(super.failureMessage);
}

class NetworkFailure extends Failure{
  NetworkFailure(super.failureMessage);
}