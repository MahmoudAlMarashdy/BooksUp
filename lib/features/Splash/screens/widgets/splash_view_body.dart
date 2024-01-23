import 'package:books_up/constants.dart';
import 'package:books_up/core/utils/assets.dart';
import 'package:books_up/features/Home/screens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: fadingAnimation,
          builder: (BuildContext context, Widget? child) {
            return FadeTransition(
              opacity: fadingAnimation,
              child: SizedBox(
                  height: 150, width: 150, child: Image.asset(AssetsData.logo)),
            );
          },
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    fadingAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => HomeView(),
          transition: Transition.fade, duration: kTransitionDuration);
    });
  }
}
