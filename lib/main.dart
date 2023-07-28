import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant.dart';
import 'views/splash_view.dart';

void main() {
  runApp(const ReadBook());
}

class ReadBook extends StatelessWidget {
  const ReadBook({super.key});

  @override
  Widget build(BuildContext context) {
    //using GetMatrialApp for navigation
    return GetMaterialApp(
      //to remove debug banner
      debugShowCheckedModeBanner: false,
      //this will make theme dark
      theme: ThemeData.dark(
      ).copyWith(
        //we put color here because we want background of all screen with same color
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: SplashView(),
    );
  }
}
