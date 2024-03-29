import 'package:books_up/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/screens/splash_view.dart';

void main() {
  runApp(const BooksUp());
}

class BooksUp extends StatelessWidget {
  const BooksUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor : kPrimaryColor
      ),
      home: SplashView(),
    );
  }
}

