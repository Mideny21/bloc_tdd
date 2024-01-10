// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';
import 'package:tdd/src/Features/members/domain/repository/member_repository.dart';
import 'package:tdd/src/core/errors/failure.dart';

class GetAllMembersUseCase {
  final MemberRepository memberRepository;
  GetAllMembersUseCase(this.memberRepository);

  Future<Either<Failure, List<MemberEntity>>> execute() {
    return memberRepository.getAllMembers();
  }
}
