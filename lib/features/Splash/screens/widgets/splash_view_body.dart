import 'package:books_up/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double> fadingAnimation;
  
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
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
                  height: 150,
                  width: 150,
                  child: Image.asset(AssetsData.logo)
              ),
            );
          },
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 2));
    fadingAnimation = Tween<double>(begin: 0,end: 1).animate(animationController);
    animationController.forward();
  }

}
