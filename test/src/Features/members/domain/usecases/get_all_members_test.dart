import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';
import 'package:tdd/src/Features/members/domain/usecases/get_all_members.dart';

import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetAllMembersUseCase getAllMembersUseCase;
  late MockMemberRepository mockMemberRepository;

  setUp(() {
    mockMemberRepository = MockMemberRepository();
    getAllMembersUseCase = GetAllMembersUseCase(mockMemberRepository);
  });

  var listofMembers = [
    MemberEntity(
        id: 1,
        name: "John",
        position: "Engineer",
        createdAt: "2243:0433:43",
        updatedAt: "4324:SFSF:FS"),
    MemberEntity(
        id: 2,
        name: "John",
        position: "Engineer",
        createdAt: "2243:0433:43",
        updatedAt: "4324:SFSF:FS")
  ];

  test('should get list of members from repository', () async {
    //arrange
    when(mockMemberRepository.getAllMembers())
        .thenAnswer((_) async => Right(listofMembers));
    //act
    final result = await getAllMembersUseCase.execute();
    //assert
    expect(result, Right(listofMembers));
  });
}
