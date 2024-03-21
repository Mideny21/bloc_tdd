import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/src/Features/customer/data/models/customer_model.dart';
import 'package:tdd/src/Features/customer/presentation/bloc/customer_bloc.dart';

import '../../../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockGetAllCustomerUseCase mockGetAllCustomerUseCase;
  late CustomerBloc customerBloc;

  setUp(() {
    mockGetAllCustomerUseCase = MockGetAllCustomerUseCase();
    customerBloc =
        CustomerBloc(getAllCustomerUseCase: mockGetAllCustomerUseCase);
  });

  final List<CustomerModel> _listcustomersModel = [
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

  test('initial state should be initial', () {
    expect(customerBloc.state, CustomerInitial());
  });

  blocTest<CustomerBloc, CustomerState>(
    'should emit [CustomerLoading,  CustomerLoaded] when data is gottern from server',
    build: () {
      when(mockGetAllCustomerUseCase.call())
          .thenAnswer((_) async => Right(_listcustomersModel));
      return customerBloc;
    },
    act: (bloc) => bloc.add(GetAllCustomer()),
    expect: () =>
        [CustomerLoading(), CustomerLoaded(customers: _listcustomersModel)],
  );
}
