import 'package:bloc/bloc.dart';
import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:books_up/features/Home/domain/use_cases/newest_books_usecase.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newestBooksUseCase) : super(NewestBooksInitial());

  final NewestBooksUseCase newestBooksUseCase;

  Future<void> fetchNewestBooks()async {
    emit(NewestBooksLoading());

    var result = await newestBooksUseCase.Execute();

    result.fold(
      (failure) => emit(NewestBooksFailure(failure.failureMessage)),
      (NewestBooks) => emit(NewestBooksSuccess(NewestBooks))
    );
  }

}
