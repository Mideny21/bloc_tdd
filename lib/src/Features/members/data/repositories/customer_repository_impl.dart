// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:tdd/src/Features/members/data/data_source/customer_remote_source.dart';
import 'package:tdd/src/Features/members/data/models/customer_model.dart';
import 'package:tdd/src/Features/members/domain/entities/customer_entity.dart';
import 'package:tdd/src/Features/members/domain/repository/customer_repository.dart';
import 'package:tdd/src/core/errors/exceptions.dart';
import 'package:tdd/src/core/errors/failure.dart';

class CustomerRepositoryImpl extends CustomerRepository {
  final CustomerRemoteDataSource customerRemoteDataSource;
  CustomerRepositoryImpl({required this.customerRemoteDataSource});

  // @override
  // Future<Either<Failure, CustomerMode>> getMember(int id) async {
  //   try {
  //     final result = await memberRemoteDataSource.getSingleMember(id);
  //     return Right(result.toEntity());
  //   } on ServerException {
  //     return Left(
  //         ServerFailure(message: 'An error has occured', statusCode: 404));
  //   }
  // }

  @override
  Future<Either<Failure, List<CustomerModel>>> getAllCustomers() async {
    try {
      final result = await customerRemoteDataSource.getAllCustomer();
      return Right(result);
    } on ServerException {
      return Left(
          ServerFailure(message: 'An error has occured', statusCode: 404));
    }
  }
}
