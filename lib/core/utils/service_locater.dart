import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  //singleton of ApiService to use it in other singletons that need ApiService
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  // we created singleton for HomeRepoImpl to use this singleton rather than creating a copy of homerepoimpl
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
