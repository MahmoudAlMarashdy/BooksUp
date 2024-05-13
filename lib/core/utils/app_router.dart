import 'package:books_up/features/Home/screens/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/screens/splash_view.dart';

abstract class AppRouter{

  static const HomePath = '/home';

  static final router = GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state) => SplashView()),
    GoRoute(path: HomePath,builder: (context,state) => HomeView()),
  ]);

}