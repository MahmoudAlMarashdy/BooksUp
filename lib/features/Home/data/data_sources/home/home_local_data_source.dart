import 'package:books_up/constants.dart';
import 'package:hive/hive.dart';

import '../../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> casheFeaturedBooks();
  List<BookEntity> casheNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> casheFeaturedBooks() {
    var box = Hive.box<BookEntity>(featuredBooksBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> casheNewestBooks() {
    var box = Hive.box<BookEntity>(newestBooksBox);
    return box.values.toList();
  }
}
