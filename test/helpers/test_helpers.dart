import 'package:mockito/annotations.dart';
import 'package:tdd/src/Features/members/domain/repository/member_repository.dart';

@GenerateMocks(
  [MemberRepository],
  // customMocks: [MockSpec<http.Client>(as: McokHttpClient)]
)
void main() {}
