import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/members/data/models/members_model.dart';
import 'package:tdd/src/Features/members/data/repositories/member_repository_impl.dart';
import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';

import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockMemberRemoteDataSource mockMemberRemoteDataSource;
  late MemberRepositoryImpl memberRepositoryImpl;

  setUp(() {
    mockMemberRemoteDataSource = MockMemberRemoteDataSource();
    memberRepositoryImpl = MemberRepositoryImpl(
        memberRemoteDataSource: mockMemberRemoteDataSource);
  });

  var testingMemberModel = MemberModel(
      id: 1,
      name: "John snow",
      position: "Principal Engineer",
      createdAt: "2023-12-19T10:07:17.000000Z",
      updatedAt: "2023-12-19T10:07:17.000000Z");

  var testingMemberEntity = MemberEntity(
      id: 1,
      name: "John snow",
      position: "Principal Engineer",
      createdAt: "2023-12-19T10:07:17.000000Z",
      updatedAt: "2023-12-19T10:07:17.000000Z");

  group('get member Entity', () {
    test('should return member when a call to data source is successful',
        () async {
      //arrange
      when(mockMemberRemoteDataSource.getSingleMember(3))
          .thenAnswer((_) async => testingMemberModel);

      //act
      final result = await memberRepositoryImpl.getMember(3);

      //assert
      expect(result, equals(Right(testingMemberEntity)));
    });
  });
}
