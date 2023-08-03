import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
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
    ],
  );
}
