import 'package:bookly/images/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.imagesLogo));
  }
}
