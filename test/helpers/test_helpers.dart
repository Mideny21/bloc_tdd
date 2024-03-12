import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:tdd/src/Features/customer/domain/repository/customer_repository.dart';

@GenerateMocks(
  [
    CustomerRepository,

    //Dio,
    //MemberRemoteDataSource,
    //  GetMemberUseCase
  ],
  // customMocks: [MockSpec<http.Client>(as: McokHttpClient)]
)
void main() {}
