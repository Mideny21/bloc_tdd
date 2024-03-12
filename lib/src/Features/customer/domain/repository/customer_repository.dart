import 'package:dartz/dartz.dart';
import 'package:tdd/src/Features/customer/domain/entities/customer_entity.dart';
import 'package:tdd/src/core/errors/failure.dart';

abstract class CustomerRepository {
  Future<Either<Failure, List<CustomerEntity>>> getAllCustomers();
}
