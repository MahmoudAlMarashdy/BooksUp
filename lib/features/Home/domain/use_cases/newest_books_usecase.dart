import 'package:books_up/core/errors/failure.dart';
import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:books_up/features/Home/domain/repositories/home_repository.dart';
import 'package:books_up/core/use_cases/generic_use_case.dart';
import 'package:dartz/dartz.dart';

class NewestBooksUseCase extends UseCase<List<BookEntity>>{

  final HomeRepository homeRepository;
  NewestBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> Execute() async {
    return await homeRepository.newestBooksRepository();
  }

}