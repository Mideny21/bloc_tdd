import 'package:dartz/dartz.dart';
import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';
import 'package:tdd/src/core/errors/failure.dart';

abstract class MemberRepository {
  Future<Either<Failure, List<MemberEntity>>> getAllMembers();
  Future<Either<Failure, MemberEntity>> getMember(int id);
}
