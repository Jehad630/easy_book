import 'package:dio/dio.dart';
import 'package:easy_book/core/repo/homeRepoImp.dart';
import 'package:easy_book/core/utilts/ApiService.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
// 
void SetupServiceLocater() {
  //         <HomeRepoImp> = type of
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(Apiservice(Dio())));

  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp((getIt.get<Apiservice>())));
}
