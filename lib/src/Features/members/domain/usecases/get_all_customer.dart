// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:tdd/src/Features/members/data/models/customer_model.dart';
import 'package:tdd/src/Features/members/domain/entities/customer_entity.dart';
import 'package:tdd/src/Features/members/domain/repository/customer_repository.dart';
import 'package:tdd/src/core/errors/failure.dart';
import 'package:tdd/src/core/usecases/usecases.dart';
import 'package:tdd/src/core/utils/typedefs.dart';

class GetAllCustomerUseCase
    implements UsecaseWithoutParams<List<CustomerEntity>> {
  final CustomerRepository customerRepository;
  GetAllCustomerUseCase({required this.customerRepository});

  @override
  ResultFuture<List<CustomerEntity>> call() {
    return customerRepository.getAllCustomers();
  }
}
