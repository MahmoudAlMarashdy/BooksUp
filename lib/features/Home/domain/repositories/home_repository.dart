import 'package:books_up/features/Home/domain/entities/book_entity.dart';

abstract class HomeRepository{

  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}