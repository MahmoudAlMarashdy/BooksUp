import 'package:books_up/constants.dart';
import 'package:books_up/core/utils/api_service.dart';
import 'package:books_up/core/utils/app_router.dart';
import 'package:books_up/core/utils/bloc_observer.dart';
import 'package:books_up/core/utils/functions.dart/init_service_locator.dart';
import 'package:books_up/features/Home/data/data_sources/home/home_local_data_source.dart';
import 'package:books_up/features/Home/data/data_sources/home/home_remote_data_source.dart';
import 'package:books_up/features/Home/data/repositories/home_repository_impl.dart';
import 'package:books_up/features/Home/domain/entities/book_entity.dart';
import 'package:books_up/features/Home/domain/use_cases/featured_books_usecase.dart';
import 'package:books_up/features/Home/domain/use_cases/newest_books_usecase.dart';
import 'package:books_up/features/Home/presentation/controller/featured_books/cubit/featured_books_cubit.dart';
import 'package:books_up/features/Home/presentation/controller/newest_books/cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(const BooksUp());
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(featuredBooksBox);
  await Hive.openBox<BookEntity>(newestBooksBox);
  Bloc.observer = MyBlocObserver();
  initServiceLocator();
}

class BooksUp extends StatelessWidget {
  const BooksUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context){
            return FeaturedBooksCubit(
              FeaturedBooksUseCase(
                locator.get<HomeRepositoryImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context){
            return NewestBooksCubit(
              NewestBooksUseCase(
                locator.get<HomeRepositoryImpl>(),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
