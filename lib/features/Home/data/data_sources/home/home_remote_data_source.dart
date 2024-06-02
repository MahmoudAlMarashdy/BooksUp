import 'package:books_up/core/utils/api_service.dart';
import 'package:books_up/features/Home/data/models/book_model/BookModel.dart';

import '../../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource{

  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();

}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{

  final ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    return fetchBooks(data);
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(endPoint: 'volumes?q=programming&Sorting=newest');
    return fetchBooks(data);
  }

  List<BookEntity> fetchBooks(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for(var book in data['items']){
      books.add(BookModel.fromJson(book));
    }
    return books;
  }

}