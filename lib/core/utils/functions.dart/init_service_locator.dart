import 'package:books_up/core/utils/api_service.dart';
import 'package:books_up/features/Home/data/data_sources/home/home_local_data_source.dart';
import 'package:books_up/features/Home/data/data_sources/home/home_remote_data_source.dart';
import 'package:books_up/features/Home/data/repositories/home_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initServiceLocator() {

  locator.registerSingleton<ApiService>(
    ApiService( 
      Dio(),
    ),
  );

  locator.registerSingleton<HomeRepositoryImpl>(
    HomeRepositoryImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        locator.get<ApiService>()
      ),
    ),
  );
}