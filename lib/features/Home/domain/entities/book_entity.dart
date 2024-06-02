import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? bookID;
  @HiveField(1)
  final String? bookImage;
  @HiveField(2)
  final String? bookTitle;
  @HiveField(3)
  final String? bookAuthor;
  @HiveField(4)
  final num? bookPrice;

  BookEntity({
    this.bookID,
    this.bookImage,
    this.bookTitle,
    this.bookAuthor,
    this.bookPrice,
  });
}
