import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:books_up/features/Home/domain/use_cases/featured_books_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks()async {
    emit(FeaturedBooksLoading());

    var result = await featuredBooksUseCase.Execute();

    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.failureMessage)),
      (featuredBooks) => emit(FeaturedBooksSuccess(featuredBooks))
    );
    
  }
}
