// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:tdd/src/Features/members/data/data_source/remote_data_source.dart';
import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';
import 'package:tdd/src/Features/members/domain/repository/member_repository.dart';
import 'package:tdd/src/core/errors/exceptions.dart';
import 'package:tdd/src/core/errors/failure.dart';

class MemberRepositoryImpl extends MemberRepository {
  final MemberRemoteDataSource memberRemoteDataSource;
  MemberRepositoryImpl({required this.memberRemoteDataSource});

  @override
  Future<Either<Failure, MemberEntity>> getMember(int id) async {
    try {
      final result = await memberRemoteDataSource.getSingleMember(id);
      return Right(result.toEntity());
    } on ServerException {
      return Left(
          ServerFailure(message: 'An error has occured', statusCode: 404));
    }
  }

  @override
  Future<Either<Failure, List<MemberEntity>>> getAllMembers() {
    // TODO: implement getAllMembers
    throw UnimplementedError();
  }
}
