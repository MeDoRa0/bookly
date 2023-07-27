import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constant.dart';
import 'views/widgets/splash_view.dart';

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
      //we put color here because we want background of all screen with same color
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: SplashView(),
    );
  }
}
