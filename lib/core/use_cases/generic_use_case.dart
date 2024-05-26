import 'package:books_up/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type>{
  Future<Either<Failure,Type>> Execute();
}