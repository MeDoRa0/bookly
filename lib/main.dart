import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

void main() {
  setupServiceLocator();
  runApp(const ReadBook());
}

class ReadBook extends StatelessWidget {
  const ReadBook({super.key});

  @override
  Widget build(BuildContext context) {
    //MultiBlocProvider to provide cubits to main
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
            //after creating FeaturedBooksCubit, call fetchFeaturedBook (.. spread opreator)
          )..fetchFeaturedBook(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      //using MatrialApp.router for navigation
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        //to remove debug banner
        debugShowCheckedModeBanner: false,
        //this will make theme dark
        theme: ThemeData.dark().copyWith(
          //we put color here because we want background of all screen with same color
          scaffoldBackgroundColor: kPrimaryColor,
          //main font for the app
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
