import 'package:books_up/features/Home/screens/book_details_view.dart';
import 'package:books_up/features/Home/screens/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/screens/splash_view.dart';

abstract class AppRouter{

  static const home = '/home';
  static const bookDetails = '/bookDetails';

  static final router = GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state) => SplashView()),
    GoRoute(path: home,builder: (context,state) => HomeView()),
    GoRoute(path: bookDetails,builder: (context,state) => BookDetailsView()),
  ]);

}