import 'package:books_up/features/Home/screens/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: const Scaffold(
        body: HomeBody(),
      ),
    );
  }
}
