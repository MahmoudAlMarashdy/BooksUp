part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

// Initializing State 

  final class FeaturedBooksInitial extends FeaturedBooksState {}

// Loading State 

  final class FeaturedBooksLoading extends FeaturedBooksState {}

// Success State 

  final class FeaturedBooksSuccess extends FeaturedBooksState {

    final List<BookEntity> books;

    FeaturedBooksSuccess(this.books);

  }

// Failure State 

  final class FeaturedBooksFailure extends FeaturedBooksState {

    final String errorMessage;

    FeaturedBooksFailure(this.errorMessage);

  }