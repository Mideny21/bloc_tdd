import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tdd/src/Features/members/data/data_source/customer_remote_source.dart';
import 'package:tdd/src/Features/members/data/repositories/customer_repository_impl.dart';
import 'package:tdd/src/Features/members/domain/repository/customer_repository.dart';
import 'package:tdd/src/Features/members/domain/usecases/get_all_customer.dart';
import 'package:tdd/src/Features/members/domain/usecases/get_member.dart';
import 'package:tdd/src/Features/members/presentation/bloc/member_bloc.dart';

final locator = GetIt.instance;

void setupLocator() {
  //bloc
  locator.registerFactory(() => MemberBloc(locator()));

  //usecase
  locator.registerLazySingleton(() => GetAllCustomerUseCase(locator()));

  //repository
  locator.registerLazySingleton<CustomerRepository>(
      () => CustomerRepositoryImpl(customerRemoteDataSource: locator()));

  //data source
  locator.registerLazySingleton<CustomerRemoteDataSource>(
      () => CustomerRemoteDataSourceImpl(api: locator()));

  //external
  locator.registerLazySingleton(() => Dio());
}
