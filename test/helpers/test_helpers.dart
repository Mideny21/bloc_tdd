import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:tdd/src/Features/members/data/data_source/remote_data_source.dart';
import 'package:tdd/src/Features/members/domain/repository/member_repository.dart';
import 'package:tdd/src/Features/members/domain/usecases/get_member.dart';

@GenerateMocks(
  [MemberRepository, Dio, MemberRemoteDataSource, GetMemberUseCase],
  // customMocks: [MockSpec<http.Client>(as: McokHttpClient)]
)
void main() {}
