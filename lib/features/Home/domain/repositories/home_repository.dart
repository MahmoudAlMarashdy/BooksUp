import 'package:books_up/core/errors/failure.dart';
import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository{

  Future<Either<Failure,List<BookEntity>>> featuredBooksRepository();
  Future<Either<Failure,List<BookEntity>>> newestBooksRepository();

}