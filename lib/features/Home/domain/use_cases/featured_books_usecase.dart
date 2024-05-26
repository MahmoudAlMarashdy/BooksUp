import 'package:books_up/core/errors/failure.dart';
import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:books_up/features/Home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type>{
  Future<Either<Failure,Type>> Execute();
}


class FeaturedBooksUseCase extends UseCase<List<BookEntity>>{

  final HomeRepository homeRepository;
  FeaturedBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> Execute() async {
   return await homeRepository.featuredBooksRepository();
  }

}