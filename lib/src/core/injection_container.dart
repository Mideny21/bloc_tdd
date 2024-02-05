import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tdd/src/Features/members/data/data_source/remote_data_source.dart';
import 'package:tdd/src/Features/members/data/repositories/member_repository_impl.dart';
import 'package:tdd/src/Features/members/domain/repository/member_repository.dart';
import 'package:tdd/src/Features/members/domain/usecases/get_member.dart';
import 'package:tdd/src/Features/members/presentation/bloc/member_bloc.dart';

final locator = GetIt.instance;

void setupLocator() {
  //bloc
  locator.registerFactory(() => MemberBloc(locator()));

  //usecase
  locator.registerLazySingleton(() => GetMemberUseCase(locator()));

  //repository
  locator.registerLazySingleton<MemberRepository>(
      () => MemberRepositoryImpl(memberRemoteDataSource: locator()));

  //data source
  locator.registerLazySingleton<MemberRemoteDataSource>(
      () => MemberRemoteDataSourceImpl(dio: locator()));

  //external
  locator.registerLazySingleton(() => Dio());
}
