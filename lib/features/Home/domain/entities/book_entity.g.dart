// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntityAdapter extends TypeAdapter<BookEntity> {
  @override
  final int typeId = 0;

  @override
  BookEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntity(
      bookID: fields[0] as String?,
      bookImage: fields[1] as String?,
      bookTitle: fields[2] as String?,
      bookAuthor: fields[3] as String?,
      bookPrice: fields[4] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.bookID)
      ..writeByte(1)
      ..write(obj.bookImage)
      ..writeByte(2)
      ..write(obj.bookTitle)
      ..writeByte(3)
      ..write(obj.bookAuthor)
      ..writeByte(4)
      ..write(obj.bookPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
