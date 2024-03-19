import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/customer/data/models/customer_model.dart';
import 'package:tdd/src/Features/customer/data/repositories/customer_repository_impl.dart';
import 'package:tdd/src/Features/customer/domain/entities/customer_entity.dart';

import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockCustomerRemoteDataSource mockCustomerRemoteDataSource;
  late CustomerRepositoryImpl customerRepositoryImpl;

  setUp(() {
    mockCustomerRemoteDataSource = MockCustomerRemoteDataSource();
    customerRepositoryImpl = CustomerRepositoryImpl(
        customerRemoteDataSource: mockCustomerRemoteDataSource);
  });

  final List<CustomerModel> listcustomersModel = [
    CustomerModel(
        id: 1,
        username: 'JohnDoe',
        email: 'mwaikasu21@gmail.com',
        firstName: 'Raymond',
        lastName: 'Mwaikasu',
        address: 'Moshi',
        phoneNumber: "0678909090",
        createdAt: '32324-342',
        updatedAt: '4534-590385903'),
    CustomerModel(
        id: 2,
        username: 'JohnDoe',
        email: 'mwaikasu21@gmail.com',
        firstName: 'Raymond',
        lastName: 'Mwaikasu',
        address: 'Moshi',
        phoneNumber: "0678909090",
        createdAt: '32324-342',
        updatedAt: '4534-590385903')
  ];

  group('get list of customer Model', () {
    test(
        'should return list of customer when call to data source is succesfully',
        () async {
      //ARRANGE
      when(mockCustomerRemoteDataSource.getAllCustomer())
          .thenAnswer((_) async => listcustomersModel);
      //ACT
      final result = await customerRepositoryImpl.getAllCustomers();

      //ASSERT
      expect(result, equals(Right(listcustomersModel)));
    });
  });
}
