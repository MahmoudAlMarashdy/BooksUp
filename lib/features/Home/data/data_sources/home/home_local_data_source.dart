import 'package:books_up/constants.dart';
import 'package:hive/hive.dart';

import '../../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> getFeaturedBooks();
  List<BookEntity> getNewestBooks();
}


// Storing Data in Local Storage


class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> getFeaturedBooks() {
    var box = Hive.box<BookEntity>(featuredBooksBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> getNewestBooks() {
    var box = Hive.box<BookEntity>(newestBooksBox);
    return box.values.toList();
  }
}
