import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/members/domain/entities/customer_entity.dart';
import 'package:tdd/src/Features/members/presentation/bloc/member_bloc.dart';
import 'package:bloc_test/bloc_test.dart';

import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockGetMemberUseCase mockGetMemberUseCase;
  late MemberBloc memberBloc;

  setUp(() {
    mockGetMemberUseCase = MockGetMemberUseCase();
    memberBloc = MemberBloc(mockGetMemberUseCase);
  });

  var memberentity = MemberEntity(
      id: 1,
      name: "John",
      position: "Engineer",
      createdAt: "2243:0433:43",
      updatedAt: "4324:SFSF:FS");

  int memberId = 1;

  test('initial state should be initial', () {
    expect(memberBloc.state, MemberInitial());
  });

  blocTest<MemberBloc, MemberState>(
    'should emit [MemberLoading MemberLoaded] when data is gotten from server.',
    build: () {
      when(mockGetMemberUseCase.execute(memberId))
          .thenAnswer((_) async => Right(memberentity));
      return memberBloc;
    },
    act: (bloc) => bloc.add(GetMember(memberId)),
    expect: () => [MemberLoading(), MemberLoaded(entity: memberentity)],
  );
}
