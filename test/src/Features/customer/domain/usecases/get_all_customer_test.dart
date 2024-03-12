import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/customer/domain/entities/customer_entity.dart';
import 'package:tdd/src/Features/customer/domain/usecases/get_all_customer.dart';

import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetAllCustomerUseCase getAllCustomerUseCase;
  late MockCustomerRepository mockCustomerRepository;

  setUp(() {
    mockCustomerRepository = MockCustomerRepository();
    getAllCustomerUseCase =
        GetAllCustomerUseCase(customerRepository: mockCustomerRepository);
  });

  var listcustomers = [
    CustomerEntity(
        id: 1,
        username: 'JohnDoe',
        email: 'mwaikasu21@gmail.com',
        firstName: 'Raymond',
        lastName: 'Mwaikasu',
        address: 'Moshi',
        phone_number: "0678909090",
        created_at: '32324-342',
        updated_at: '4534-590385903'),
    CustomerEntity(
        id: 2,
        username: 'JohnDoe',
        email: 'mwaikasu21@gmail.com',
        firstName: 'Raymond',
        lastName: 'Mwaikasu',
        address: 'Moshi',
        phone_number: "0678909090",
        created_at: '32324-342',
        updated_at: '4534-590385903')
  ];

  test('Should get list of customer from repository', () async {
    // ARRANGE
    when(mockCustomerRepository.getAllCustomers())
        .thenAnswer((_) async => Right(listcustomers));
    //ACT
    final result = await getAllCustomerUseCase.call();
    //ASSERT
    expect(result, Right(listcustomers));
  });
}
