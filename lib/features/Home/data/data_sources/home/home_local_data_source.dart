import '../../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> casheFeaturedBooks();
  List<BookEntity> casheNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> casheFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> casheNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
