import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/model/data/repos/app_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/simller_books_cubit/simller_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/views/splash_view.dart';
import 'package:bookly/core/utils/service_locater.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  // GoRouter configuration , we use this package for navigation in this app
  // static so any file can access this file
  static final router = GoRouter(
    routes: [
      GoRoute(
        // this is the initial screen, first screen in app
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      //creat new path that lead to Homeview
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimllerBooksCubit(getIt.get<AppRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) =>  const SearchView(),
      ),
    ],
  );
}
