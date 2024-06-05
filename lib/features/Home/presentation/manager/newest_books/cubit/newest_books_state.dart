part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

// Initializing State 

  final class NewestBooksInitial extends NewestBooksState {}

// Loading State 

  final class NewestBooksLoading extends NewestBooksState {}

// Success State 

  final class NewestBooksSuccess extends NewestBooksState {

    final List<BookEntity> books;

    NewestBooksSuccess(this.books);

  }

// Failure State 

  final class NewestBooksFailure extends NewestBooksState {

    final String errorMessage;

    NewestBooksFailure(this.errorMessage);

  }
