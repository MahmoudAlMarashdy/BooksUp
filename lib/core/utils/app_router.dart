import 'package:books_up/features/Home/presentation/views/book_details_view.dart';
import 'package:books_up/features/Home/presentation/views/home_view.dart';
import 'package:books_up/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';



abstract class AppRouter{

  static const home = '/home';
  static const bookDetails = '/bookDetails';

  static final router = GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state) => const SplashView()),
    GoRoute(path: home,builder: (context,state) => const HomeView()),
    GoRoute(path: bookDetails,builder: (context,state) => const BookDetailsView()),
  ]);

}