import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:tdd/src/Features/members/domain/repository/member_repository.dart';

@GenerateMocks(
  [MemberRepository, Dio],
  // customMocks: [MockSpec<http.Client>(as: McokHttpClient)]
)
void main() {}
