import 'package:books_up/features/Home/domain/entities/book_entity.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

class BookModel extends BookEntity{

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,}) : super(
        bookID: id!,
        bookTitle: volumeInfo!.title!,
        bookAuthor: volumeInfo.authors?.first ?? 'No Author Info',
        bookImage: volumeInfo.imageLinks?.thumbnail ?? 'No Image Found',
        bookPrice: 0.0
      );

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }

BookModel copyWith({  String? kind,
  String? id,
  String? etag,
  String? selfLink,
  VolumeInfo? volumeInfo,
  SaleInfo? saleInfo,
  AccessInfo? accessInfo,
  SearchInfo? searchInfo,
}) => BookModel(  kind: kind ?? this.kind,
  id: id ?? this.id,
  etag: etag ?? this.etag,
  selfLink: selfLink ?? this.selfLink,
  volumeInfo: volumeInfo ?? this.volumeInfo,
  saleInfo: saleInfo ?? this.saleInfo,
  accessInfo: accessInfo ?? this.accessInfo,
  searchInfo: searchInfo ?? this.searchInfo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}