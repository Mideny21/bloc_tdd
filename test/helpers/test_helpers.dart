import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:tdd/src/Features/customer/data/data_source/customer_remote_source.dart';
import 'package:tdd/src/Features/customer/domain/repository/customer_repository.dart';
import 'package:tdd/src/core/network/api.dart';

@GenerateMocks(
  [
    CustomerRepository,
    ApiService,
    Dio,
    CustomerRemoteDataSource
    //MemberRemoteDataSource,
    //  GetMemberUseCase
  ],
  // customMocks: [MockSpec<http.Client>(as: McokHttpClient)]
)
void main() {}
