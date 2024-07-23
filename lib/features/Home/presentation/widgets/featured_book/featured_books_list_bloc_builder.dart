import 'package:books_up/features/Home/presentation/controller/featured_books/cubit/featured_books_cubit.dart';
import 'package:books_up/features/Home/presentation/widgets/featured_book/featured_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListBlocBuilder extends StatelessWidget {
  const FeatureBooksListBlocBuilder({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return FeaturedBooksList(
            books: state.books,
          );
        }else if(state is FeaturedBooksFailure){
          return Text(state.errorMessage);
        }else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
