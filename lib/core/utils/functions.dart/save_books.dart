import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(String booksBox , List<BookEntity> newestBooks) {
    var newestBooksBox = Hive.box(booksBox);
    newestBooksBox.addAll(newestBooks);
  }