import 'package:books_up/features/Home/presentation/controller/newest_books/cubit/newest_books_cubit.dart';
import 'package:books_up/features/Home/presentation/widgets/newest/newest_book_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListBlocBuilder extends StatelessWidget {
  const NewestBooksListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state){
        if(state is NewestBooksSuccess){
          return NewestBooksList(
            books: state.books,
          );
        }else if(state is NewestBooksFailure){
          return Text(state.errorMessage);
        }else{
          print(state);
          return Center(child: CircularProgressIndicator());
          
        }
      },
    );
  }
}