import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

void main() {
  runApp(const ReadBook());
}

class ReadBook extends StatelessWidget {
  const ReadBook({super.key});

  @override
  Widget build(BuildContext context) {
    //using MatrialApp.router for navigation
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      //to remove debug banner
      debugShowCheckedModeBanner: false,
      //this will make theme dark
      theme: ThemeData.dark().copyWith(
        //we put color here because we want background of all screen with same color
        scaffoldBackgroundColor: kPrimaryColor,
        //main font for the app
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}

