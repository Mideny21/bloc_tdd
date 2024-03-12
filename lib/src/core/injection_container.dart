import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tdd/src/Features/customer/data/data_source/customer_remote_source.dart';
import 'package:tdd/src/Features/customer/data/repositories/customer_repository_impl.dart';
import 'package:tdd/src/Features/customer/domain/repository/customer_repository.dart';
import 'package:tdd/src/Features/customer/domain/usecases/get_all_customer.dart';
import 'package:tdd/src/Features/customer/presentation/bloc/customer_bloc.dart';

import 'package:tdd/src/core/network/api.dart';
import 'package:tdd/src/core/network/logger.dart';
import 'package:tdd/src/core/network/network_logger.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerSingleton(SimpleLogPrinter());

  //bloc
  locator.registerFactory(() => CustomerBloc(getAllCustomerUseCase: locator()));

  //usecase
  locator.registerLazySingleton<GetAllCustomerUseCase>(
      () => GetAllCustomerUseCase(customerRepository: locator()));

  //repository
  locator.registerLazySingleton<CustomerRepository>(
      () => CustomerRepositoryImpl(customerRemoteDataSource: locator()));

  //data source
  locator.registerLazySingleton<CustomerRemoteDataSource>(
      () => CustomerRemoteDataSourceImpl(api: locator()));

  //external
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<ApiService>(() => ApiService());
  locator.registerSingleton(Logging());
}
