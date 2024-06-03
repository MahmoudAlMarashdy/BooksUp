import 'package:books_up/core/errors/failure.dart';
import 'package:books_up/features/Home/data/data_sources/home/home_local_data_source.dart';
import 'package:books_up/features/Home/data/data_sources/home/home_remote_data_source.dart';
import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:books_up/features/Home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl extends HomeRepository{

  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepositoryImpl({required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> featuredBooksRepository() async {
// Getting Data from Resources
    try {
      List<BookEntity> books = homeLocalDataSource.getFeaturedBooks();

      if (books.isNotEmpty) return right(books);

      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
// Exception
    } catch (e) {
      return left(ServerFailure());
    }
  }


  @override
  Future<Either<Failure, List<BookEntity>>> newestBooksRepository() async {
// Getting Data from Resources
    try {
      List<BookEntity> books = homeLocalDataSource.getNewestBooks();

      if (books.isNotEmpty) return right(books);

      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
// Exception
    } catch (e) {
      return left(ServerFailure());
    }
  }
}