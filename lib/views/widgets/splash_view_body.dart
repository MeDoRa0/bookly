import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

//SingleTickerProviderStateMixin is to handle the change rate of values
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //this to make animation on screen
  //late tell that code will get its value in future
  late AnimationController animationController;
  //offset because we use dy,dx values to animate
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    //we refactor this code
    initSlidingAnimation();
//calling this method to go to home screen
    navigatetoHome();
  }

  //we must make dispose with every controlller to prevent memory leak
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Images.imagesLogo),
        //AnimatedBuilder will make this widget rebuild when animation value change
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

//we refactor this code here so we can use it in another projects
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  //method to go to home page with transion
  void navigatetoHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTransionDuration);
    });
  }
}
